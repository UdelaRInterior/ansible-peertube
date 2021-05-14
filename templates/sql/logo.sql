DELETE FROM "plugin" WHERE "name" = 'bittube-logo-favicon';
INSERT INTO "plugin" (
  name,
  type,
  version,
  "latestVersion",
  enabled,
  uninstalled,
  "peertubeEngine",
  description,
  homepage,
  settings,
  "createdAt",
  "updatedAt")
VALUES (
  'bittube-logo-favicon',
  1,
  '1.0.5',
  '1.0.5',
  't',
  'f',
  '>=1.4.0-rc1',
  'PeerTube logo && favicon plugin for BitTube.video ',
  'https://github.com/ipbc-dev/peertube-plugin-bittube-logo-favicon',
  '{"icon_url": "{{ peertube_logo.icon_url }}", "icon_width": "{{ peertube_logo.icon_width }}"}',
  current_date,
  current_date);
