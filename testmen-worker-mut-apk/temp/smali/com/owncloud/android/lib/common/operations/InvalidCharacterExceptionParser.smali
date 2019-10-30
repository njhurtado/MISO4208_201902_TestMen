.class public Lcom/owncloud/android/lib/common/operations/InvalidCharacterExceptionParser;
.super Ljava/lang/Object;
.source "InvalidCharacterExceptionParser.java"


# static fields
.field private static final EXCEPTION_STRING:Ljava/lang/String; = "OC\\Connector\\Sabre\\Exception\\InvalidPath"

.field private static final EXCEPTION_UPLOAD_STRING:Ljava/lang/String; = "OCP\\Files\\InvalidPathException"

.field private static final NODE_ERROR:Ljava/lang/String; = "d:error"

.field private static final NODE_EXCEPTION:Ljava/lang/String; = "s:exception"

.field private static final ns:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/owncloud/android/lib/common/operations/InvalidCharacterExceptionParser;->ns:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readError(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 87
    const-string v0, ""

    .line 88
    .local v0, "exception":Ljava/lang/String;
    sget-object v2, Lcom/owncloud/android/lib/common/operations/InvalidCharacterExceptionParser;->ns:Ljava/lang/String;

    const-string v3, "d:error"

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 90
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 93
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "name":Ljava/lang/String;
    const-string v2, "s:exception"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-direct {p0, p1}, Lcom/owncloud/android/lib/common/operations/InvalidCharacterExceptionParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_1
    invoke-direct {p0, p1}, Lcom/owncloud/android/lib/common/operations/InvalidCharacterExceptionParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 102
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    const-string v2, "OC\\Connector\\Sabre\\Exception\\InvalidPath"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "OCP\\Files\\InvalidPathException"

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 102
    :goto_1
    return v2

    .line 103
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 139
    const-string v0, ""

    .line 140
    .local v0, "result":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 141
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 144
    :cond_0
    return-object v0
.end method

.method private skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 116
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 118
    :cond_0
    const/4 v0, 0x1

    .line 119
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_1

    .line 120
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 123
    goto :goto_0

    .line 129
    :cond_1
    return-void

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public parseXMLResponse(Ljava/io/InputStream;)Z
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v2, 0x0

    .line 64
    .local v2, "result":Z
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 65
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 67
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 68
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v3, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 69
    const/4 v3, 0x0

    invoke-interface {v1, p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 70
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 71
    invoke-direct {p0, v1}, Lcom/owncloud/android/lib/common/operations/InvalidCharacterExceptionParser;->readError(Lorg/xmlpull/v1/XmlPullParser;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 74
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 76
    return v2

    .line 74
    .end local v0    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v3
.end method
