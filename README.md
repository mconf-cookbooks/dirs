dirs Cookbook
=================

A very simple cookbook to create directories and set permissions.

If the directory doesn't exist, it is created. If it already exists, it has its permissions set.

Attributes
----------

#### dirs::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['dirs']['create']</tt></td>
    <td>Array</td>
    <td>Array of directories to be created or have its permissions set.</td>
    <td><tt>[]</tt></td>
  </tr>
  <tr>
    <td><tt>['dirs']['create'][n]</tt></td>
    <td>Hash</td>
    <td>A hash with the attributes for a directory. Accepts the attributes "path", "user", "group" and "chmod".</td>
    <td>-</td>
  </tr>
</table>

Usage
-----
#### dirs::default

Just include `dirs` in your node's `run_list` and specify the attributes:

```json
{
  "name":"my_node",
  "dirs": {
    "create": [
      {
        "path": "/var/www/my-app",
        "user": "my-user",
        "group": "my-group",
        "chmod": "0755"
      },
      {
        "path": "/etc/my-app",
        "user": "root",
        "group": "root",
        "chmod": "0700"
      }
    ]
  },
  "run_list": [
    "recipe[dirs]"
  ]
}
```
