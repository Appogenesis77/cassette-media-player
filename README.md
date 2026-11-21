# Cassette Media Player

An animated, responsive SVG cassette audio player for the web. Developed by **Appogenesis** ([@Appogenesis77](https://github.com/Appogenesis77)); originally created as client work for **Long Dark Tunnel**.

This public starter version removes the client's logo and recordings. The cassette player retains dynamic tape transfer, transparent reel centres, rotating winding hubs, transport buttons, random flyer-inspired colours, saved per-recording playback positions and browser Media Session integration (text metadata).

## Running it

1. Upload `index.html` to a site served over HTTPS.
2. Create a `tunes/` folder alongside it (included here).
3. Add your own appropriately licensed `.mp3`, `.wav`, `.m4a`, or `.ogg` audio to `tunes/`.
4. On **Windows hosting with Classic ASP enabled**, place `tunes/scan.asp` in that folder (included), then open `https://YOUR-SITE/tunes/scan.asp` to confirm it displays a JSON array of filenames.
5. Open your website and press Play.

**Important:** HTML alone cannot enumerate server-side directory contents. This edition uses Classic ASP for automatic playlist discovery and will not run that feature on ordinary static hosts (including GitHub Pages). A static JSON playlist or alternate server implementation would be needed for those hosts. Audio files are intentionally excluded from version control.

## Controls

- **Previous / Next:** Choose adjacent file and play it only if audio was already playing.
- **Play / Pause** and **Stop**.
- **Rewind / Fast-forward:** Tap to skip, hold to seek continuously and silently with faster reel animation.
- Dynamic tape sizes reflect each recording's play position; positions are saved per browser using `localStorage`.
- Background colour changes when recordings change.

## Integration

The generic player is currently a single HTML file. A reusable JavaScript package or WordPress block has not yet been released.

## Credits and rights

Created by **Appogenesis** for the original client **Long Dark Tunnel**. Client logos and recordings are not included in this repository. **No open-source license has been granted yet**; select and add a LICENSE file only once the right to distribute the code under that license has been confirmed. Until then, GitHub public visibility alone does not grant reuse rights.