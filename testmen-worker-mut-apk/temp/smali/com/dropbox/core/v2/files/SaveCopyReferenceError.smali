.class public final Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
.super Ljava/lang/Object;
.source "SaveCopyReferenceError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;,
        Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;
    }
.end annotation


# static fields
.field public static final INVALID_COPY_REFERENCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

.field public static final NOT_FOUND:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

.field public static final OTHER:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

.field public static final TOO_MANY_FILES:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

.field private final pathValue:Lcom/dropbox/core/v2/files/WriteError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->INVALID_COPY_REFERENCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;-><init>(Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->INVALID_COPY_REFERENCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;-><init>(Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->NO_PERMISSION:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    .line 78
    new-instance v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->NOT_FOUND:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;-><init>(Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->NOT_FOUND:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;-><init>(Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    .line 90
    new-instance v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->OTHER:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;-><init>(Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->OTHER:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;Lcom/dropbox/core/v2/files/WriteError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;
    .param p2, "pathValue"    # Lcom/dropbox/core/v2/files/WriteError;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    .line 105
    iput-object p2, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/SaveCopyReferenceError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/files/WriteError;

    .prologue
    .line 151
    if-nez p0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->PATH:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;-><init>(Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;Lcom/dropbox/core/v2/files/WriteError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 238
    if-ne p1, p0, :cond_0

    .line 264
    :goto_0
    :pswitch_0
    return v2

    .line 241
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 242
    check-cast v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    .line 243
    .local v0, "other":Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 244
    goto :goto_0

    .line 246
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$1;->$SwitchMap$com$dropbox$core$v2$files$SaveCopyReferenceError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 260
    goto :goto_0

    .line 248
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
    :cond_4
    move v2, v1

    .line 264
    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->PATH:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    if-eq v0, v1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 229
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 233
    .local v0, "hash":I
    return v0
.end method

.method public isInvalidCopyReference()Z
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->INVALID_COPY_REFERENCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoPermission()Z
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

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
    .line 202
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->NOT_FOUND:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

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
    .line 224
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->OTHER:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

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
    .line 134
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->PATH:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTooManyFiles()Z
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->_tag:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    sget-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    sget-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
