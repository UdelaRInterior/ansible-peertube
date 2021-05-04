
TRUNCATE TABLE plugin;

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
  'auth-ldap',
  1,
  '0.0.8',
  '0.0.8',
  't',
  'f',
  '>=2.2.0',
  'Add LDAP support to login form in PeerTube.',
  'https://framagit.org/framasoft/peertube/official-plugins/tree/master/peertube-plugin-auth-ldap',
  '{"url": "{{ peertube_ldap.url }}",
  "weight": "100",
  "bind-dn": "{{ peertube_ldap.bind_dn }}",
  "custom-ca": "",
  "search-base": "{{ peertube_ldap.search_base }}",
  "group-filter": "{{ peertube_ldap.group_filter }}",
  "insecure-tls": "{{ peertube_ldap.insecure_tls }}",
  "mail-property": "mail",
  "search-filter": "(cn={% raw %}{{username}}{% endraw %})",
  "bind-credentials": "{{ peertube_ldap.bind_credentials }}",
  "username-property": "{{ peertube_ldap.username_property }}"}',
  current_date,
  current_date);

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

UPDATE "user" set "password" = '{{ peertube_dbuser_password }}' where "username" = 'root';
