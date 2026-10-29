# eqdm — Project Context

## AI Role

AI is used as an **advisor for architecture, design, Flutter, Android, and implementation decisions**.  
AI should not write code instead of the developer unless explicitly asked.

When answering, consider the project concept and do not suggest features that conflict with it.

## What is eqdm

**eqdm** is a local music player built around one simple idea:

> **Folder = playlist.**

The user already stores music in the file system and decides how to organize it: by album, mood, genre, artist, or project. The app simply opens the existing structure and lets the user listen to it.

eqdm does not create its own library, does not require importing music, and does not offer another way to organize it.

## Core idea

- A folder is a playlist.
- The file system is the only library.
- The queue is temporary and exists only for the current listening session.
- The app should not become a file manager or a regular player with a music library.

## File system as the foundation

- If a track is in a folder, it is available in eqdm.
- If a folder contains music, it can be played as a playlist.
- Subfolders remain part of the natural hierarchy.
- Folders are displayed as playlists or albums.

## Main use case

Select a root folder → navigate to the desired directory → tap a track or play the entire folder.

After that, music plays and the app remembers where the user stopped. On the next launch, playback can continue from the same place.

## Folder handling

- Select one root music folder.
- The root folder is stored in settings, for example as `root folder`.
- Display subfolders and audio files of the current directory.
- Navigate through nested folders.
- Go back up using breadcrumbs — a navigation path inside the file system.
- A folder opens as a list of tracks.
- Subfolders are not automatically added to the queue.

## Playback

- Start a track by tapping it.
- Play a folder using the “Play folder” action.
- After the selected track, the remaining tracks from the current folder play.
- Play / pause.
- Next / previous.
- Seek within a track.
- Repeat the current folder or track.
- Shuffle within the current folder.

## Queue

The folder defines the context. The queue defines the current listening session.

- By default, the queue is the contents of the current folder.
- Tapping a track replaces the queue and starts playback from that track.
- “Play next” adds a track or folder immediately after the current track.
- “Add to queue” adds a track or folder to the end of the queue.
- The queue can be viewed in the mini player.
- The queue can be cleared.
- The queue is not saved as a permanent playlist.

## Background playback and session restore

- Playback continues when the app is minimized.
- System media notification with play / pause / next / previous.
- Headphone button controls.
- Save the last folder, queue, track, and playback position.
- Restore the session after the app is restarted.

## Formats and files

- Support MP3, FLAC, OGG, and WAV.
- Read title, artist, album, duration, and cover art if metadata is available.
- If metadata is missing, use the file name.

## Interface

- One main screen: folders, tracks, breadcrumbs.
- Mini player at the bottom.
- Now Playing screen with progress and playback controls.
- Simple dark theme.

## Future directions

In the future, separate modules are planned for:

- NTS Radio.
- SoundCloud.

Support features may also be considered for the public release, along with a separate personal no-support version of the app.

## Technologies

The project is built with Flutter.

For the MVP, the expected stack includes:

- Flutter.
- Dart.
- `just_audio` for playback.
- `just_audio_background` for background playback and system media controls.
- Android Storage Access Framework / platform channels for access to the user-selected folder.
- Simple local storage for settings and session restoration.

A database is not expected in the MVP.

## MVP boundaries

The MVP does not include:

- Music library and importing.
- Tags, genres, or ratings.
- Smart playlists.
- Permanent user playlists.
- Equalizer.
- Metadata editor.
- Accounts, cloud, or synchronization.
- Streaming services.
- Drag-and-drop in the queue.
- Search across the entire collection.

## Development principles

- Minimalism is more important than the number of features.
- Do not add settings, menus, or filters without a real need.
- Any new feature must not violate the principle: **folder = playlist**.
- Build a working vertical slice first, then improve the UI.
- Android is the first target platform.
- AI suggests options, explains trade-offs, and helps make decisions, but the developer makes the final architectural decisions.
