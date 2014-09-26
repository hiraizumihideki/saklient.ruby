# SAKURA Internet API Client Library for Ruby

This library gives you an easy interface to control your resources on
[SAKURA Cloud](https://secure.sakura.ad.jp/cloud/).

## Table of Contents

<!-- This TOC is generated by https://www.npmjs.org/package/readme-toc -->
<!-- toc -->
* [Installation](#installation)
* [How to use this library in your project](#how-to-use-this-library-in-your-project)
* [Examples](#examples)
* [Copyright and license](#copyright-and-license)

<!-- toc stop -->

## Installation

```bash
gem install saklient
```


## How to use this library in your project


```ruby
require 'saklient/cloud/api'
api = Saklient::Cloud::API.authorize(YOUR_API_TOKEN, YOUR_API_SECRET, ZONE)
# ZONE: "is1a" (Ishikari 1st zone), "is1b" (Ishikari 2nd zone), "tk1v" (Sandbox)
# "tk1v" is recommended for tests

# ...
```


## Examples

Code examples are available [here](http://sakura-internet.github.io/saklient.doc/).


## Copyright and license

Copyright (C) 2014 SAKURA Internet, Inc.

This library is freely redistributable under [MIT license](http://www.opensource.org/licenses/mit-license.php).

