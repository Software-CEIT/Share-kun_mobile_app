import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:share_kun/generated/locale_keys.g.dart';

@RoutePage()
class SelectLanguagePage extends StatefulWidget {
  const SelectLanguagePage({super.key});

  @override
  State<SelectLanguagePage> createState() => _SelectLanguagePageState();
}

class _SelectLanguagePageState extends State<SelectLanguagePage> {
  static const _languages = [
    _Language(
      locale: Locale('en'),
      flag: '🇬🇧',
      nameKey: LocaleKeys.language_english_name,
      nativeName: 'English',
    ),
    _Language(
      locale: Locale('lo'),
      flag: '🇱🇦',
      nameKey: LocaleKeys.language_lao_name,
      nativeName: 'ພາສາລາວ',
    ),
  ];

  late Locale _selected;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _selected = context.locale;
  }

  void _selectLanguage(_Language lang) {
    setState(() => _selected = lang.locale);
  }

  void _confirm() {
    context.setLocale(_selected);
    context.router.maybePop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F0),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left_rounded,
              size: 28, color: Color(0xFF1A1A2E)),
          onPressed: () => context.router.maybePop(),
        ),
        title: Text(
          LocaleKeys.profile_language.tr(),
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xFF1A1A2E),
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: _languages.map((lang) {
                  final isSelected = _selected.languageCode == lang.locale.languageCode;
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: _LanguageCard(
                      language: lang,
                      isSelected: isSelected,
                      onTap: () => _selectLanguage(lang),
                    ),
                  );
                }).toList(),
              ),
            ),

            // Confirm button
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _confirm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4A90D9),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  child: Text(
                    LocaleKeys.language_confirm.tr(),
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Language model ─────────────────────────────────────────────────────────────

class _Language {
  final Locale locale;
  final String flag;
  final String nameKey;
  final String nativeName;

  const _Language({
    required this.locale,
    required this.flag,
    required this.nameKey,
    required this.nativeName,
  });
}

// ── Language Card ──────────────────────────────────────────────────────────────

class _LanguageCard extends StatelessWidget {
  final _Language language;
  final bool isSelected;
  final VoidCallback onTap;

  const _LanguageCard({
    required this.language,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: isSelected
              ? Border.all(color: const Color(0xFF4A90D9), width: 1.5)
              : Border.all(color: const Color(0xFFE5E7EB)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // Flag
            Text(
              language.flag,
              style: const TextStyle(fontSize: 36),
            ),
            const SizedBox(width: 16),

            // Names
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    language.nameKey.tr(),
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1A1A2E),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    language.nativeName,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color(0xFF6B7280),
                    ),
                  ),
                ],
              ),
            ),

            // Selection indicator
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: isSelected
                  ? const Icon(Icons.check_circle_rounded,
                      key: ValueKey(true),
                      color: Color(0xFF4A90D9),
                      size: 26)
                  : const Icon(Icons.radio_button_unchecked,
                      key: ValueKey(false),
                      color: Color(0xFFCBD5E1),
                      size: 26),
            ),
          ],
        ),
      ),
    );
  }
}
