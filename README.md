# Inscribe - Companion Journal
![Build Status](https://app.bitrise.io/app/053180ea-3d4f-4655-b64c-b9fb9ab1d797/status.svg?token=lJlpdiRH-CJE_4oD8q0Fjw)

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Android](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white)
![iOS](https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white)
![Play Store](https://img.shields.io/badge/Google_Play-414141?style=for-the-badge&logo=google-play&logoColor=white)
![Firebase](https://img.shields.io/badge/firebase-de4c12?style=for-the-badge&logo=firebase&logoColor=ffcd34)

### [🥳 Available on Play Store!](https://play.google.com/store/apps/details?id=com.tarapogancev.inscribe)

Inscribe is a **Flutter** mobile application designed for taking notes based on timely friend lexicons. It helps you keep track of important upcoming events, memorable facts, and gift ideas year-round, especially as birthdays approach.

Developed as a Flutter learning project, Inscribe tackles complex concepts and aims to be personally useful, reducing the need for multiple Google Calendar reminders and separate notes. The app adheres to **Clean Architecture Design** and employs **BLOC** for state management, utilizing both Blocs and Cubits for learning purposes, and incorporating the UseCase approach where applicable.

# 🌎 Supported Languages
- 🇬🇧 English
- 🇩🇪 German
- 🇹🇷 Turkish
- 🇫🇷 French
- 🇪🇸 Spanish
- 🇷🇸 Serbian
- 🇷🇺 Russian
- 🇮🇹 Italian

# 🧠 Planned upcoming features
- [x] Reminders
- [x] Notifications
- [x] Calendar screen
- [x] Export data
- [ ] Import data
- [x] More languages
- [x] Better animations on friend screen
- [ ] Replace AI illustrations with hand-drawn ones ❤️

## 🐞 Known bugs
- [x] Bugs will appear here...

#### Main libraries and practices
Clean Architecture, BLOC, cubits, usecases, Hive, freezed, shared preferences, i18n + slang, getIt for DI, adaptive theme, awesome notifications.

# 🖼 Screenshots

![Inscribe](assets/git_feature_image.jpg)
![Inscribe](assets/feature_graphic.jpg)

# 📚 Resources
[https://www.freepik.com/](https://www.freepik.com/) - Illustrations

[https://playground.com/](https://playground.com/) - AI Generating Illustrations

[Figma SVG Asset Pack](https://www.figma.com/file/qJfFm08K6qeLqT8enQNVer/Vector-Library---SVG-Assets-Pack-(Community)?type=design&mode=design&t=eGPguRAznDmO61Ju-0) - Wave SVGs

# 💻 Development Commands

Generate translations: `dart run slang`

Run freezed: `dart run build_runner build`

Generate icons: `flutter pub run flutter_launcher_icons`

Rename app: `rename setAppName --targets ios,android,web --value "Inscribe"`