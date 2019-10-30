.class public final Lcom/dropbox/core/DbxHost;
.super Ljava/lang/Object;
.source "DbxHost.java"


# static fields
.field public static final DEFAULT:Lcom/dropbox/core/DbxHost;

.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Lcom/dropbox/core/DbxHost;",
            ">;"
        }
    .end annotation
.end field

.field public static final Writer:Lcom/dropbox/core/json/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonWriter",
            "<",
            "Lcom/dropbox/core/DbxHost;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final api:Ljava/lang/String;

.field private final content:Ljava/lang/String;

.field private final notify:Ljava/lang/String;

.field private final web:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 25
    new-instance v0, Lcom/dropbox/core/DbxHost;

    const-string v1, "api.dropboxapi.com"

    const-string v2, "content.dropboxapi.com"

    const-string v3, "www.dropbox.com"

    const-string v4, "notify.dropboxapi.com"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/DbxHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    .line 114
    new-instance v0, Lcom/dropbox/core/DbxHost$1;

    invoke-direct {v0}, Lcom/dropbox/core/DbxHost$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxHost;->Reader:Lcom/dropbox/core/json/JsonReader;

    .line 184
    new-instance v0, Lcom/dropbox/core/DbxHost$2;

    invoke-direct {v0}, Lcom/dropbox/core/DbxHost$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxHost;->Writer:Lcom/dropbox/core/json/JsonWriter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "web"    # Ljava/lang/String;
    .param p4, "notify"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/dropbox/core/DbxHost;->api:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/dropbox/core/DbxHost;->content:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/dropbox/core/DbxHost;->web:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/dropbox/core/DbxHost;->notify:Ljava/lang/String;

    .line 48
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/dropbox/core/DbxHost;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/dropbox/core/DbxHost;->fromBaseHost(Ljava/lang/String;)Lcom/dropbox/core/DbxHost;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/DbxHost;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/DbxHost;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dropbox/core/DbxHost;->inferBaseHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/DbxHost;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/DbxHost;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dropbox/core/DbxHost;->api:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dropbox/core/DbxHost;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/DbxHost;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dropbox/core/DbxHost;->content:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dropbox/core/DbxHost;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/DbxHost;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dropbox/core/DbxHost;->web:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dropbox/core/DbxHost;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/DbxHost;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dropbox/core/DbxHost;->notify:Ljava/lang/String;

    return-object v0
.end method

.method private static fromBaseHost(Ljava/lang/String;)Lcom/dropbox/core/DbxHost;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Lcom/dropbox/core/DbxHost;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "api-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "api-content-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "meta-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "api-notify-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/DbxHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private inferBaseHost()Ljava/lang/String;
    .locals 6

    .prologue
    .line 172
    iget-object v4, p0, Lcom/dropbox/core/DbxHost;->web:Ljava/lang/String;

    const-string v5, "meta-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/dropbox/core/DbxHost;->api:Ljava/lang/String;

    const-string v5, "api-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/dropbox/core/DbxHost;->content:Ljava/lang/String;

    const-string v5, "api-content-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/dropbox/core/DbxHost;->notify:Ljava/lang/String;

    const-string v5, "api-notify-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    iget-object v4, p0, Lcom/dropbox/core/DbxHost;->web:Ljava/lang/String;

    const-string v5, "meta-"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "webBase":Ljava/lang/String;
    iget-object v4, p0, Lcom/dropbox/core/DbxHost;->api:Ljava/lang/String;

    const-string v5, "api-"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "apiBase":Ljava/lang/String;
    iget-object v4, p0, Lcom/dropbox/core/DbxHost;->content:Ljava/lang/String;

    const-string v5, "api-content-"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "contentBase":Ljava/lang/String;
    iget-object v4, p0, Lcom/dropbox/core/DbxHost;->notify:Ljava/lang/String;

    const-string v5, "api-notify-"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "notifyBase":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    .end local v0    # "apiBase":Ljava/lang/String;
    .end local v1    # "contentBase":Ljava/lang/String;
    .end local v2    # "notifyBase":Ljava/lang/String;
    .end local v3    # "webBase":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    if-ne p1, p0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v1

    .line 99
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/DbxHost;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 100
    check-cast v0, Lcom/dropbox/core/DbxHost;

    .line 101
    .local v0, "other":Lcom/dropbox/core/DbxHost;
    iget-object v3, v0, Lcom/dropbox/core/DbxHost;->api:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/DbxHost;->api:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/dropbox/core/DbxHost;->content:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/DbxHost;->content:Ljava/lang/String;

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/dropbox/core/DbxHost;->web:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/DbxHost;->web:Ljava/lang/String;

    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/dropbox/core/DbxHost;->notify:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/DbxHost;->notify:Ljava/lang/String;

    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/DbxHost;
    :cond_3
    move v1, v2

    .line 106
    goto :goto_0
.end method

.method public getApi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dropbox/core/DbxHost;->api:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dropbox/core/DbxHost;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getNotify()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dropbox/core/DbxHost;->notify:Ljava/lang/String;

    return-object v0
.end method

.method public getWeb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/core/DbxHost;->web:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/DbxHost;->api:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/DbxHost;->content:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/DbxHost;->web:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/DbxHost;->notify:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
