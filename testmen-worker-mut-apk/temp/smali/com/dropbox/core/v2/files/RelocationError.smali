.class public final Lcom/dropbox/core/v2/files/RelocationError;
.super Ljava/lang/Object;
.source "RelocationError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/RelocationError$Serializer;,
        Lcom/dropbox/core/v2/files/RelocationError$Tag;
    }
.end annotation


# static fields
.field public static final CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final OTHER:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field private final fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

.field private final fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

.field private final toValue:Lcom/dropbox/core/v2/files/WriteError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/files/RelocationError;-><init>(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/WriteError;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/files/RelocationError;-><init>(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/WriteError;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/files/RelocationError;-><init>(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/WriteError;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError;

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/files/RelocationError;-><init>(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/WriteError;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError;

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/files/RelocationError;-><init>(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/WriteError;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError;

    .line 100
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/files/RelocationError;-><init>(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/WriteError;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->OTHER:Lcom/dropbox/core/v2/files/RelocationError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/WriteError;Lcom/dropbox/core/v2/files/WriteError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/RelocationError$Tag;
    .param p2, "fromLookupValue"    # Lcom/dropbox/core/v2/files/LookupError;
    .param p3, "fromWriteValue"    # Lcom/dropbox/core/v2/files/WriteError;
    .param p4, "toValue"    # Lcom/dropbox/core/v2/files/WriteError;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    .line 119
    iput-object p2, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    .line 120
    iput-object p3, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    .line 121
    iput-object p4, p0, Lcom/dropbox/core/v2/files/RelocationError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/RelocationError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/RelocationError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/RelocationError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public static fromLookup(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/LookupError;

    .prologue
    const/4 v2, 0x0

    .line 167
    if-nez p0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/dropbox/core/v2/files/RelocationError;-><init>(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/WriteError;Lcom/dropbox/core/v2/files/WriteError;)V

    return-object v0
.end method

.method public static fromWrite(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/WriteError;

    .prologue
    const/4 v2, 0x0

    .line 213
    if-nez p0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/dropbox/core/v2/files/RelocationError;-><init>(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/WriteError;Lcom/dropbox/core/v2/files/WriteError;)V

    return-object v0
.end method

.method public static to(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/WriteError;

    .prologue
    const/4 v2, 0x0

    .line 259
    if-nez p0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1, v2, v2, p0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/WriteError;Lcom/dropbox/core/v2/files/WriteError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 359
    if-ne p1, p0, :cond_0

    .line 391
    :goto_0
    :pswitch_0
    return v2

    .line 362
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/files/RelocationError;

    if-eqz v3, :cond_8

    move-object v0, p1

    .line 363
    check-cast v0, Lcom/dropbox/core/v2/files/RelocationError;

    .line 364
    .local v0, "other":Lcom/dropbox/core/v2/files/RelocationError;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 365
    goto :goto_0

    .line 367
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/files/RelocationError$1;->$SwitchMap$com$dropbox$core$v2$files$RelocationError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/RelocationError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 387
    goto :goto_0

    .line 369
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .line 371
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    move v2, v1

    goto :goto_0

    .line 373
    :pswitch_3
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/RelocationError;
    :cond_8
    move v2, v1

    .line 391
    goto :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getFromLookupValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-eq v0, v1, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FROM_LOOKUP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public getFromWriteValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-eq v0, v1, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FROM_WRITE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public getToValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-eq v0, v1, :cond_0

    .line 275
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TO, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 348
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 354
    .local v0, "hash":I
    return v0
.end method

.method public isCantCopySharedFolder()Z
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCantMoveFolderIntoItself()Z
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCantNestSharedFolder()Z
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDuplicatedOrNestedPaths()Z
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFromLookup()Z
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFromWrite()Z
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationError$Tag;

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
    .line 343
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTo()Z
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationError$Tag;

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
    .line 321
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/RelocationError$Tag;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->_tag:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 397
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
