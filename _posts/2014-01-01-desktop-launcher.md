---
title: Create desktop launcher and mime types for gnome
layout: post
date: 2014-01-01 00:00
tag:
  - linux
star: false
category: blog
author: cfgnunes
---

## Create a user desktop launcher (shortcut) for a application

Create a `.desktop` file (in this example, the filename is `wxformbuilder`):

    nano ~/.local/share/applications/wxformbuilder.desktop

With the follow content (example):

    [Desktop Entry]
    Name=wxFormBuilder
    Comment=wxWidgets GUI Designer
    TryExec=/bin/wxformbuilder
    Exec=/bin/wxformbuilder
    Icon=wxformbuilder
    Terminal=false
    Type=Application
    Categories=GTK;GUIDesigner;Development;
    MimeType=application/x-wxformbuilder;

And run:

    update-desktop-database ~/.local/share/applications

You can put the icon in:

    ~/.local/share/icons/wxformbuilder.png

Or... you can put the icon in:

    ~/.icons/wxformbuilder.png

For more information, see:

- [Gnome - Desktop files](https://developer.gnome.org/integration-guide/stable/desktop-files.html.en)
- [Freedesktop - Desktop Entry Specification](https://specifications.freedesktop.org/desktop-entry-spec/desktop-entry-spec-latest.html)

## Create a user mime type

Create a `.xml` file (in this example, the filename is `wxformbuilder`):

    nano ~/.local/share/mime/packages/wxformbuilder.xml

With the follow content (example):

    <?xml version="1.0" encoding="UTF-8"?>
    <mime-info xmlns="http://www.freedesktop.org/standards/shared-mime-info">
        <mime-type type="application/x-wxformbuilder">
            <comment>wxFormBuilder Project</comment>
            <glob pattern="*.fbp"/>
            <sub-class-of type="application/xml"/>
            <magic priority="50">
                <match value="wxFormBuilder_Project" type="string"/>
            </magic>
            <icon name="wxformbuilder"/>
        </mime-type>
    </mime-info>

And run:

    update-mime-database ~/.local/share/mime
