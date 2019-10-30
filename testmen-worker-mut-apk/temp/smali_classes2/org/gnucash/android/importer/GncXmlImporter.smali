.class public Lorg/gnucash/android/importer/GncXmlImporter;
.super Ljava/lang/Object;
.source "GncXmlImporter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 20
    .param p0, "gncXmlInputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v10

    .line 51
    .local v10, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v10}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v9

    .line 52
    .local v9, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v11

    .line 55
    .local v11, "xr":Lorg/xml/sax/XMLReader;
    new-instance v7, Ljava/io/PushbackInputStream;

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v14}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 56
    .local v7, "pb":Ljava/io/PushbackInputStream;
    const/4 v14, 0x2

    new-array v8, v14, [B

    .line 57
    .local v8, "signature":[B
    invoke-virtual {v7, v8}, Ljava/io/PushbackInputStream;->read([B)I

    .line 58
    invoke-virtual {v7, v8}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 59
    const/4 v14, 0x0

    aget-byte v14, v8, v14

    const/16 v15, 0x1f

    if-ne v14, v15, :cond_0

    const/4 v14, 0x1

    aget-byte v14, v8, v14

    const/16 v15, -0x75

    if-ne v14, v15, :cond_0

    .line 60
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v14, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v14, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 65
    .local v3, "bos":Ljava/io/BufferedInputStream;
    :goto_0
    const-class v14, Lorg/gnucash/android/importer/GncXmlImporter;

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Start import"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v6, Lorg/gnucash/android/importer/GncXmlHandler;

    invoke-direct {v6}, Lorg/gnucash/android/importer/GncXmlHandler;-><init>()V

    .line 67
    .local v6, "handler":Lorg/gnucash/android/importer/GncXmlHandler;
    invoke-interface {v11, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 68
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 69
    .local v12, "startTime":J
    new-instance v14, Lorg/xml/sax/InputSource;

    invoke-direct {v14, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v11, v14}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 70
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 71
    .local v4, "endTime":J
    const-class v14, Lorg/gnucash/android/importer/GncXmlImporter;

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "%d ns spent on importing the file"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sub-long v18, v4, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {v6}, Lorg/gnucash/android/importer/GncXmlHandler;->getBookUID()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "bookUID":Ljava/lang/String;
    invoke-static {}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v14

    invoke-virtual {v14}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getTimestampOfLastModification()Ljava/sql/Timestamp;

    move-result-object v14

    .line 74
    invoke-static {v14, v2}, Lorg/gnucash/android/util/PreferencesHelper;->setLastExportTime(Ljava/sql/Timestamp;Ljava/lang/String;)V

    .line 79
    return-object v2

    .line 62
    .end local v2    # "bookUID":Ljava/lang/String;
    .end local v3    # "bos":Ljava/io/BufferedInputStream;
    .end local v4    # "endTime":J
    .end local v6    # "handler":Lorg/gnucash/android/importer/GncXmlHandler;
    .end local v12    # "startTime":J
    :cond_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v3    # "bos":Ljava/io/BufferedInputStream;
    goto :goto_0
.end method
