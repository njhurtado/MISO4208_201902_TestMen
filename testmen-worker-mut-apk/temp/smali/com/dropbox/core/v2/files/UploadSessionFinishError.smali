.class public final Lcom/dropbox/core/v2/files/UploadSessionFinishError;
.super Ljava/lang/Object;
.source "UploadSessionFinishError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;,
        Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

.field public static final TOO_MANY_SHARED_FOLDER_TARGETS:Lcom/dropbox/core/v2/files/UploadSessionFinishError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

.field private final lookupFailedValue:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

.field private final pathValue:Lcom/dropbox/core/v2/files/WriteError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->TOO_MANY_SHARED_FOLDER_TARGETS:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;Lcom/dropbox/core/v2/files/UploadSessionLookupError;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->TOO_MANY_SHARED_FOLDER_TARGETS:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;Lcom/dropbox/core/v2/files/UploadSessionLookupError;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;Lcom/dropbox/core/v2/files/UploadSessionLookupError;Lcom/dropbox/core/v2/files/WriteError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;
    .param p2, "lookupFailedValue"    # Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    .param p3, "pathValue"    # Lcom/dropbox/core/v2/files/WriteError;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    .line 92
    iput-object p2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->lookupFailedValue:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    .line 93
    iput-object p3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/UploadSessionFinishError;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->lookupFailedValue:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/UploadSessionFinishError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public static lookupFailed(Lcom/dropbox/core/v2/files/UploadSessionLookupError;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    .prologue
    .line 140
    if-nez p0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->LOOKUP_FAILED:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;Lcom/dropbox/core/v2/files/UploadSessionLookupError;Lcom/dropbox/core/v2/files/WriteError;)V

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/WriteError;

    .prologue
    .line 189
    if-nez p0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->PATH:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;Lcom/dropbox/core/v2/files/UploadSessionLookupError;Lcom/dropbox/core/v2/files/WriteError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 246
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 268
    :cond_0
    :goto_0
    return v1

    .line 249
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 250
    check-cast v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    .line 251
    .local v0, "other":Lcom/dropbox/core/v2/files/UploadSessionFinishError;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    if-ne v3, v4, :cond_0

    .line 254
    sget-object v3, Lcom/dropbox/core/v2/files/UploadSessionFinishError$1;->$SwitchMap$com$dropbox$core$v2$files$UploadSessionFinishError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 256
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->lookupFailedValue:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->lookupFailedValue:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->lookupFailedValue:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->lookupFailedValue:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 258
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 260
    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 262
    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getLookupFailedValue()Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->LOOKUP_FAILED:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    if-eq v0, v1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.LOOKUP_FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->lookupFailedValue:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    return-object v0
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->PATH:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    if-eq v0, v1, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 236
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->lookupFailedValue:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 241
    .local v0, "hash":I
    return v0
.end method

.method public isLookupFailed()Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->LOOKUP_FAILED:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

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
    .line 231
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

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
    .line 172
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->PATH:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTooManySharedFolderTargets()Z
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->TOO_MANY_SHARED_FOLDER_TARGETS:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
