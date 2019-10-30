.class public final Lcom/dropbox/core/v2/files/SaveUrlError;
.super Ljava/lang/Object;
.source "SaveUrlError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;,
        Lcom/dropbox/core/v2/files/SaveUrlError$Tag;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_FAILED:Lcom/dropbox/core/v2/files/SaveUrlError;

.field public static final INVALID_URL:Lcom/dropbox/core/v2/files/SaveUrlError;

.field public static final NOT_FOUND:Lcom/dropbox/core/v2/files/SaveUrlError;

.field public static final OTHER:Lcom/dropbox/core/v2/files/SaveUrlError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

.field private final pathValue:Lcom/dropbox/core/v2/files/WriteError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlError;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->DOWNLOAD_FAILED:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/SaveUrlError;-><init>(Lcom/dropbox/core/v2/files/SaveUrlError$Tag;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlError;->DOWNLOAD_FAILED:Lcom/dropbox/core/v2/files/SaveUrlError;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlError;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->INVALID_URL:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/SaveUrlError;-><init>(Lcom/dropbox/core/v2/files/SaveUrlError$Tag;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlError;->INVALID_URL:Lcom/dropbox/core/v2/files/SaveUrlError;

    .line 70
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlError;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->NOT_FOUND:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/SaveUrlError;-><init>(Lcom/dropbox/core/v2/files/SaveUrlError$Tag;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlError;->NOT_FOUND:Lcom/dropbox/core/v2/files/SaveUrlError;

    .line 78
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlError;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->OTHER:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/SaveUrlError;-><init>(Lcom/dropbox/core/v2/files/SaveUrlError$Tag;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlError;->OTHER:Lcom/dropbox/core/v2/files/SaveUrlError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/files/SaveUrlError$Tag;Lcom/dropbox/core/v2/files/WriteError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/SaveUrlError$Tag;
    .param p2, "pathValue"    # Lcom/dropbox/core/v2/files/WriteError;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->_tag:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    .line 93
    iput-object p2, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/SaveUrlError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/SaveUrlError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/SaveUrlError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/files/WriteError;

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlError;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->PATH:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/SaveUrlError;-><init>(Lcom/dropbox/core/v2/files/SaveUrlError$Tag;Lcom/dropbox/core/v2/files/WriteError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 215
    if-ne p1, p0, :cond_0

    .line 239
    :goto_0
    :pswitch_0
    return v2

    .line 218
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/files/SaveUrlError;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 219
    check-cast v0, Lcom/dropbox/core/v2/files/SaveUrlError;

    .line 220
    .local v0, "other":Lcom/dropbox/core/v2/files/SaveUrlError;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->_tag:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SaveUrlError;->_tag:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 221
    goto :goto_0

    .line 223
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/files/SaveUrlError$1;->$SwitchMap$com$dropbox$core$v2$files$SaveUrlError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->_tag:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 235
    goto :goto_0

    .line 225
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SaveUrlError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SaveUrlError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/SaveUrlError;
    :cond_4
    move v2, v1

    .line 239
    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->_tag:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->PATH:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    if-eq v0, v1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->_tag:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 206
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->_tag:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 210
    .local v0, "hash":I
    return v0
.end method

.method public isDownloadFailed()Z
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->_tag:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->DOWNLOAD_FAILED:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidUrl()Z
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->_tag:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->INVALID_URL:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotFound()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->_tag:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->NOT_FOUND:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->_tag:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->OTHER:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPath()Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->_tag:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->PATH:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/SaveUrlError$Tag;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->_tag:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
