---
title: Best disk partitioning scheme for common users
layout: post
date: 2014-01-02 00:00
tag:
  - linux
star: false
category: blog
author: cfgnunes
---

What size should you define for partitions on GNU/Linux, for a common user?
Minimum requirements for each operating system:

| Os           | Size  |
| ------------ | ----- |
| Ubuntu 20.04 | 10 GB |
| Windows 10   | 20 GB |

I define the following sizes, for my partitions:

| Mount point | Type  | Size             |
| ----------- | ----- | ---------------- |
| (efi)       | FAT32 | 512 MB           |
| /           | EXT4  | 40 GB            |
| /home       | EXT4  | (remaining disk) |
| (swap)      | SWAP  | RAM size + 1 GB  |
| (windows)   | NTFS  | 80 GB            |

For more information, see:

- [Fedora - Recommended Partitioning Scheme](https://jfearn.fedorapeople.org/fdocs/en-US/Fedora/20/html/Installation_Guide/s2-diskpartrecommend-x86.html)
- [Partitioning - ArchWiki](https://wiki.archlinux.org/index.php/partitioning)
