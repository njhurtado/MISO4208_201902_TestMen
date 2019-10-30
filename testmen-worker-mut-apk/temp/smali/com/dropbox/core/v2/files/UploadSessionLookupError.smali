.class public final Lcom/dropbox/core/v2/files/UploadSessionLookupError;
.super Ljava/lang/Object;
.source "UploadSessionLookupError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;,
        Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;
    }
.end annotation


# static fields
.field public static final CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

.field public static final NOT_CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

.field public static final NOT_FOUND:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

.field public static final OTHER:Lcom/dropbox/core/v2/files/UploadSessionLookupError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

.field private final incorrectOffsetValue:Lcom/dropbox/core/v2/files/UploadSessionOffsetError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->NOT_FOUND:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;-><init>(Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;Lcom/dropbox/core/v2/files/UploadSessionOffsetError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->NOT_FOUND:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;-><init>(Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;Lcom/dropbox/core/v2/files/UploadSessionOffsetError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->NOT_CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;-><init>(Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;Lcom/dropbox/core/v2/files/UploadSessionOffsetError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->NOT_CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;-><init>(Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;Lcom/dropbox/core/v2/files/UploadSessionOffsetError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;Lcom/dropbox/core/v2/files/UploadSessionOffsetError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;
    .param p2, "incorrectOffsetValue"    # Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    .line 106
    iput-object p2, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->incorrectOffsetValue:Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/UploadSessionLookupError;)Lcom/dropbox/core/v2/files/UploadSessionOffsetError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->incorrectOffsetValue:Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    return-object v0
.end method

.method public static incorrectOffset(Lcom/dropbox/core/v2/files/UploadSessionOffsetError;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    .prologue
    .line 166
    if-nez p0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->INCORRECT_OFFSET:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;-><init>(Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;Lcom/dropbox/core/v2/files/UploadSessionOffsetError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 237
    if-ne p1, p0, :cond_0

    .line 261
    :goto_0
    :pswitch_0
    return v2

    .line 240
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 241
    check-cast v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    .line 242
    .local v0, "other":Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 243
    goto :goto_0

    .line 245
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/files/UploadSessionLookupError$1;->$SwitchMap$com$dropbox$core$v2$files$UploadSessionLookupError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 257
    goto :goto_0

    .line 249
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->incorrectOffsetValue:Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->incorrectOffsetValue:Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->incorrectOffsetValue:Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->incorrectOffsetValue:Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/UploadSessionOffsetError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    :cond_4
    move v2, v1

    .line 261
    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getIncorrectOffsetValue()Lcom/dropbox/core/v2/files/UploadSessionOffsetError;
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->INCORRECT_OFFSET:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    if-eq v0, v1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.INCORRECT_OFFSET, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->incorrectOffsetValue:Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 228
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->incorrectOffsetValue:Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 232
    .local v0, "hash":I
    return v0
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncorrectOffset()Z
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->INCORRECT_OFFSET:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotClosed()Z
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->NOT_CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

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
    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->NOT_FOUND:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

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
    .line 223
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
