.class public final Lcom/dropbox/core/v2/sharing/GetSharedLinksError;
.super Ljava/lang/Object;
.source "GetSharedLinksError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;,
        Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/GetSharedLinksError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;

.field private final pathValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;-><init>(Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->OTHER:Lcom/dropbox/core/v2/sharing/GetSharedLinksError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;Ljava/lang/String;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;
    .param p2, "pathValue"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;

    .line 65
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->pathValue:Ljava/lang/String;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/GetSharedLinksError;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/GetSharedLinksError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->pathValue:Ljava/lang/String;

    return-object v0
.end method

.method public static path()Lcom/dropbox/core/v2/sharing/GetSharedLinksError;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->path(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinksError;

    move-result-object v0

    return-object v0
.end method

.method public static path(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinksError;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;->PATH:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;-><init>(Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 162
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 180
    :cond_0
    :goto_0
    return v1

    .line 165
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 166
    check-cast v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;

    .line 167
    .local v0, "other":Lcom/dropbox/core/v2/sharing/GetSharedLinksError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;

    if-ne v3, v4, :cond_0

    .line 170
    sget-object v3, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$1;->$SwitchMap$com$dropbox$core$v2$sharing$GetSharedLinksError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 172
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->pathValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->pathValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->pathValue:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->pathValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->pathValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 174
    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPathValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;->PATH:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;

    if-eq v0, v1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->pathValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 153
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->pathValue:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 157
    .local v0, "hash":I
    return v0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;

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
    .line 94
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;->PATH:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->_tag:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    sget-object v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
