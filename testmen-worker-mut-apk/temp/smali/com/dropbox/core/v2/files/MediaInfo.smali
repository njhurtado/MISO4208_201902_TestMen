.class public final Lcom/dropbox/core/v2/files/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/MediaInfo$Serializer;,
        Lcom/dropbox/core/v2/files/MediaInfo$Tag;
    }
.end annotation


# static fields
.field public static final PENDING:Lcom/dropbox/core/v2/files/MediaInfo;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

.field private final metadataValue:Lcom/dropbox/core/v2/files/MediaMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/dropbox/core/v2/files/MediaInfo;

    sget-object v1, Lcom/dropbox/core/v2/files/MediaInfo$Tag;->PENDING:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/MediaInfo;-><init>(Lcom/dropbox/core/v2/files/MediaInfo$Tag;Lcom/dropbox/core/v2/files/MediaMetadata;)V

    sput-object v0, Lcom/dropbox/core/v2/files/MediaInfo;->PENDING:Lcom/dropbox/core/v2/files/MediaInfo;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/files/MediaInfo$Tag;Lcom/dropbox/core/v2/files/MediaMetadata;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/MediaInfo$Tag;
    .param p2, "metadataValue"    # Lcom/dropbox/core/v2/files/MediaMetadata;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/dropbox/core/v2/files/MediaInfo;->_tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    .line 62
    iput-object p2, p0, Lcom/dropbox/core/v2/files/MediaInfo;->metadataValue:Lcom/dropbox/core/v2/files/MediaMetadata;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/MediaInfo;)Lcom/dropbox/core/v2/files/MediaMetadata;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/MediaInfo;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MediaInfo;->metadataValue:Lcom/dropbox/core/v2/files/MediaMetadata;

    return-object v0
.end method

.method public static metadata(Lcom/dropbox/core/v2/files/MediaMetadata;)Lcom/dropbox/core/v2/files/MediaInfo;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/files/MediaMetadata;

    .prologue
    .line 116
    if-nez p0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/MediaInfo;

    sget-object v1, Lcom/dropbox/core/v2/files/MediaInfo$Tag;->METADATA:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/MediaInfo;-><init>(Lcom/dropbox/core/v2/files/MediaInfo$Tag;Lcom/dropbox/core/v2/files/MediaMetadata;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 150
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 168
    :cond_0
    :goto_0
    return v1

    .line 153
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/files/MediaInfo;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 154
    check-cast v0, Lcom/dropbox/core/v2/files/MediaInfo;

    .line 155
    .local v0, "other":Lcom/dropbox/core/v2/files/MediaInfo;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/MediaInfo;->_tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/MediaInfo;->_tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    if-ne v3, v4, :cond_0

    .line 158
    sget-object v3, Lcom/dropbox/core/v2/files/MediaInfo$1;->$SwitchMap$com$dropbox$core$v2$files$MediaInfo$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/MediaInfo;->_tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/MediaInfo$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 160
    goto :goto_0

    .line 162
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/MediaInfo;->metadataValue:Lcom/dropbox/core/v2/files/MediaMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/MediaInfo;->metadataValue:Lcom/dropbox/core/v2/files/MediaMetadata;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/MediaInfo;->metadataValue:Lcom/dropbox/core/v2/files/MediaMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/MediaInfo;->metadataValue:Lcom/dropbox/core/v2/files/MediaMetadata;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMetadataValue()Lcom/dropbox/core/v2/files/MediaMetadata;
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MediaInfo;->_tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/MediaInfo$Tag;->METADATA:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    if-eq v0, v1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.METADATA, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/MediaInfo;->_tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/MediaInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MediaInfo;->metadataValue:Lcom/dropbox/core/v2/files/MediaMetadata;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 141
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/MediaInfo;->_tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/MediaInfo;->metadataValue:Lcom/dropbox/core/v2/files/MediaMetadata;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 145
    .local v0, "hash":I
    return v0
.end method

.method public isMetadata()Z
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MediaInfo;->_tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/MediaInfo$Tag;->METADATA:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPending()Z
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MediaInfo;->_tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/MediaInfo$Tag;->PENDING:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/MediaInfo$Tag;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MediaInfo;->_tag:Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/MediaInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/MediaInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
