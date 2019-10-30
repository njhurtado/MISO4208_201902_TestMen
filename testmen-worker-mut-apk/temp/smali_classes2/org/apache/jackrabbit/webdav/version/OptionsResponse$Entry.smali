.class Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;
.super Ljava/lang/Object;
.source "OptionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/jackrabbit/webdav/version/OptionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field private final hrefs:[Ljava/lang/String;

.field private final localName:Ljava/lang/String;

.field private final namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;[Ljava/lang/String;)V
    .locals 0
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .param p3, "hrefs"    # [Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;->localName:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 141
    iput-object p3, p0, Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;->hrefs:[Ljava/lang/String;

    .line 142
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;[Ljava/lang/String;Lorg/apache/jackrabbit/webdav/version/OptionsResponse$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .param p3, "x2"    # [Ljava/lang/String;
    .param p4, "x3"    # Lorg/apache/jackrabbit/webdav/version/OptionsResponse$1;

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;->hrefs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;->localName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;)Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .locals 1
    .param p0, "x0"    # Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    return-object v0
.end method
