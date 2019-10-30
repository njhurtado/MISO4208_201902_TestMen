.class public final Lcom/dropbox/core/v2/files/LookupError;
.super Ljava/lang/Object;
.source "LookupError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/LookupError$Serializer;,
        Lcom/dropbox/core/v2/files/LookupError$Tag;
    }
.end annotation


# static fields
.field public static final NOT_FILE:Lcom/dropbox/core/v2/files/LookupError;

.field public static final NOT_FOLDER:Lcom/dropbox/core/v2/files/LookupError;

.field public static final NOT_FOUND:Lcom/dropbox/core/v2/files/LookupError;

.field public static final OTHER:Lcom/dropbox/core/v2/files/LookupError;

.field public static final RESTRICTED_CONTENT:Lcom/dropbox/core/v2/files/LookupError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/files/LookupError$Tag;

.field private final invalidPathRootValue:Lcom/dropbox/core/v2/files/PathRootError;

.field private final malformedPathValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/files/LookupError;

    sget-object v1, Lcom/dropbox/core/v2/files/LookupError$Tag;->NOT_FOUND:Lcom/dropbox/core/v2/files/LookupError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/files/LookupError;-><init>(Lcom/dropbox/core/v2/files/LookupError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/PathRootError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/LookupError;->NOT_FOUND:Lcom/dropbox/core/v2/files/LookupError;

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/files/LookupError;

    sget-object v1, Lcom/dropbox/core/v2/files/LookupError$Tag;->NOT_FILE:Lcom/dropbox/core/v2/files/LookupError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/files/LookupError;-><init>(Lcom/dropbox/core/v2/files/LookupError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/PathRootError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/LookupError;->NOT_FILE:Lcom/dropbox/core/v2/files/LookupError;

    .line 84
    new-instance v0, Lcom/dropbox/core/v2/files/LookupError;

    sget-object v1, Lcom/dropbox/core/v2/files/LookupError$Tag;->NOT_FOLDER:Lcom/dropbox/core/v2/files/LookupError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/files/LookupError;-><init>(Lcom/dropbox/core/v2/files/LookupError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/PathRootError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/LookupError;->NOT_FOLDER:Lcom/dropbox/core/v2/files/LookupError;

    .line 89
    new-instance v0, Lcom/dropbox/core/v2/files/LookupError;

    sget-object v1, Lcom/dropbox/core/v2/files/LookupError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/files/LookupError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/files/LookupError;-><init>(Lcom/dropbox/core/v2/files/LookupError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/PathRootError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/LookupError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/files/LookupError;

    .line 97
    new-instance v0, Lcom/dropbox/core/v2/files/LookupError;

    sget-object v1, Lcom/dropbox/core/v2/files/LookupError$Tag;->OTHER:Lcom/dropbox/core/v2/files/LookupError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/files/LookupError;-><init>(Lcom/dropbox/core/v2/files/LookupError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/PathRootError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/LookupError;->OTHER:Lcom/dropbox/core/v2/files/LookupError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/files/LookupError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/PathRootError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/LookupError$Tag;
    .param p2, "malformedPathValue"    # Ljava/lang/String;
    .param p3, "invalidPathRootValue"    # Lcom/dropbox/core/v2/files/PathRootError;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/dropbox/core/v2/files/LookupError;->_tag:Lcom/dropbox/core/v2/files/LookupError$Tag;

    .line 114
    iput-object p2, p0, Lcom/dropbox/core/v2/files/LookupError;->malformedPathValue:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/dropbox/core/v2/files/LookupError;->invalidPathRootValue:Lcom/dropbox/core/v2/files/PathRootError;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/LookupError;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/LookupError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/LookupError;->malformedPathValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/PathRootError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/LookupError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/LookupError;->invalidPathRootValue:Lcom/dropbox/core/v2/files/PathRootError;

    return-object v0
.end method

.method public static invalidPathRoot(Lcom/dropbox/core/v2/files/PathRootError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/PathRootError;

    .prologue
    .line 260
    if-nez p0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/LookupError;

    sget-object v1, Lcom/dropbox/core/v2/files/LookupError$Tag;->INVALID_PATH_ROOT:Lcom/dropbox/core/v2/files/LookupError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/files/LookupError;-><init>(Lcom/dropbox/core/v2/files/LookupError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/PathRootError;)V

    return-object v0
.end method

.method public static malformedPath()Lcom/dropbox/core/v2/files/LookupError;
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dropbox/core/v2/files/LookupError;->malformedPath(Ljava/lang/String;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v0

    return-object v0
.end method

.method public static malformedPath(Ljava/lang/String;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Lcom/dropbox/core/v2/files/LookupError;

    sget-object v1, Lcom/dropbox/core/v2/files/LookupError$Tag;->MALFORMED_PATH:Lcom/dropbox/core/v2/files/LookupError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/files/LookupError;-><init>(Lcom/dropbox/core/v2/files/LookupError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/PathRootError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 307
    if-ne p1, p0, :cond_0

    .line 335
    :goto_0
    :pswitch_0
    return v2

    .line 310
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/files/LookupError;

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 311
    check-cast v0, Lcom/dropbox/core/v2/files/LookupError;

    .line 312
    .local v0, "other":Lcom/dropbox/core/v2/files/LookupError;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/LookupError;->_tag:Lcom/dropbox/core/v2/files/LookupError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/LookupError;->_tag:Lcom/dropbox/core/v2/files/LookupError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 313
    goto :goto_0

    .line 315
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/files/LookupError$1;->$SwitchMap$com$dropbox$core$v2$files$LookupError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/LookupError;->_tag:Lcom/dropbox/core/v2/files/LookupError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/LookupError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 331
    goto :goto_0

    .line 317
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/LookupError;->malformedPathValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/LookupError;->malformedPathValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/LookupError;->malformedPathValue:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/LookupError;->malformedPathValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/LookupError;->malformedPathValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .line 327
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/LookupError;->invalidPathRootValue:Lcom/dropbox/core/v2/files/PathRootError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/LookupError;->invalidPathRootValue:Lcom/dropbox/core/v2/files/PathRootError;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/files/LookupError;->invalidPathRootValue:Lcom/dropbox/core/v2/files/PathRootError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/LookupError;->invalidPathRootValue:Lcom/dropbox/core/v2/files/PathRootError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/PathRootError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/LookupError;
    :cond_6
    move v2, v1

    .line 335
    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getInvalidPathRootValue()Lcom/dropbox/core/v2/files/PathRootError;
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/dropbox/core/v2/files/LookupError;->_tag:Lcom/dropbox/core/v2/files/LookupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/LookupError$Tag;->INVALID_PATH_ROOT:Lcom/dropbox/core/v2/files/LookupError$Tag;

    if-eq v0, v1, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.INVALID_PATH_ROOT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/LookupError;->_tag:Lcom/dropbox/core/v2/files/LookupError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/LookupError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/LookupError;->invalidPathRootValue:Lcom/dropbox/core/v2/files/PathRootError;

    return-object v0
.end method

.method public getMalformedPathValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/dropbox/core/v2/files/LookupError;->_tag:Lcom/dropbox/core/v2/files/LookupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/LookupError$Tag;->MALFORMED_PATH:Lcom/dropbox/core/v2/files/LookupError$Tag;

    if-eq v0, v1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MALFORMED_PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/LookupError;->_tag:Lcom/dropbox/core/v2/files/LookupError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/LookupError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/LookupError;->malformedPathValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 297
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/LookupError;->_tag:Lcom/dropbox/core/v2/files/LookupError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/LookupError;->malformedPathValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/LookupError;->invalidPathRootValue:Lcom/dropbox/core/v2/files/PathRootError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 302
    .local v0, "hash":I
    return v0
.end method

.method public isInvalidPathRoot()Z
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/dropbox/core/v2/files/LookupError;->_tag:Lcom/dropbox/core/v2/files/LookupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/LookupError$Tag;->INVALID_PATH_ROOT:Lcom/dropbox/core/v2/files/LookupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMalformedPath()Z
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dropbox/core/v2/files/LookupError;->_tag:Lcom/dropbox/core/v2/files/LookupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/LookupError$Tag;->MALFORMED_PATH:Lcom/dropbox/core/v2/files/LookupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotFile()Z
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/dropbox/core/v2/files/LookupError;->_tag:Lcom/dropbox/core/v2/files/LookupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/LookupError$Tag;->NOT_FILE:Lcom/dropbox/core/v2/files/LookupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotFolder()Z
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dropbox/core/v2/files/LookupError;->_tag:Lcom/dropbox/core/v2/files/LookupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/LookupError$Tag;->NOT_FOLDER:Lcom/dropbox/core/v2/files/LookupError$Tag;

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
    .line 199
    iget-object v0, p0, Lcom/dropbox/core/v2/files/LookupError;->_tag:Lcom/dropbox/core/v2/files/LookupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/LookupError$Tag;->NOT_FOUND:Lcom/dropbox/core/v2/files/LookupError$Tag;

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
    .line 292
    iget-object v0, p0, Lcom/dropbox/core/v2/files/LookupError;->_tag:Lcom/dropbox/core/v2/files/LookupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/LookupError$Tag;->OTHER:Lcom/dropbox/core/v2/files/LookupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRestrictedContent()Z
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/dropbox/core/v2/files/LookupError;->_tag:Lcom/dropbox/core/v2/files/LookupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/LookupError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/files/LookupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/LookupError$Tag;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dropbox/core/v2/files/LookupError;->_tag:Lcom/dropbox/core/v2/files/LookupError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 341
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
