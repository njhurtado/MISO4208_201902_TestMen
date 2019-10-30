.class public final Lcom/dropbox/core/v2/files/RelocationBatchError;
.super Ljava/lang/Object;
.source "RelocationBatchError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;,
        Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;
    }
.end annotation


# static fields
.field public static final CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError;

.field public static final CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationBatchError;

.field public static final CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError;

.field public static final DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationBatchError;

.field public static final OTHER:Lcom/dropbox/core/v2/files/RelocationBatchError;

.field public static final TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationBatchError;

.field public static final TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/RelocationBatchError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field private final fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

.field private final fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

.field private final toValue:Lcom/dropbox/core/v2/files/WriteError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/WriteError;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 80
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/WriteError;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 84
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/WriteError;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 88
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/WriteError;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 93
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/WriteError;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 101
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/WriteError;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 106
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/WriteError;Lcom/dropbox/core/v2/files/WriteError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/RelocationBatchError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/WriteError;Lcom/dropbox/core/v2/files/WriteError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;
    .param p2, "fromLookupValue"    # Lcom/dropbox/core/v2/files/LookupError;
    .param p3, "fromWriteValue"    # Lcom/dropbox/core/v2/files/WriteError;
    .param p4, "toValue"    # Lcom/dropbox/core/v2/files/WriteError;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 125
    iput-object p2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    .line 126
    iput-object p3, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    .line 127
    iput-object p4, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/RelocationBatchError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/RelocationBatchError;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/RelocationBatchError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/RelocationBatchError;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/files/RelocationBatchError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/RelocationBatchError;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public static fromLookup(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/LookupError;

    .prologue
    const/4 v2, 0x0

    .line 170
    if-nez p0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/WriteError;Lcom/dropbox/core/v2/files/WriteError;)V

    return-object v0
.end method

.method public static fromWrite(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/WriteError;

    .prologue
    const/4 v2, 0x0

    .line 216
    if-nez p0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/WriteError;Lcom/dropbox/core/v2/files/WriteError;)V

    return-object v0
.end method

.method public static to(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/WriteError;

    .prologue
    const/4 v2, 0x0

    .line 262
    if-nez p0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1, v2, v2, p0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/WriteError;Lcom/dropbox/core/v2/files/WriteError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 374
    if-ne p1, p0, :cond_0

    .line 408
    :goto_0
    :pswitch_0
    return v2

    .line 377
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchError;

    if-eqz v3, :cond_8

    move-object v0, p1

    .line 378
    check-cast v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 379
    .local v0, "other":Lcom/dropbox/core/v2/files/RelocationBatchError;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 380
    goto :goto_0

    .line 382
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/files/RelocationBatchError$1;->$SwitchMap$com$dropbox$core$v2$files$RelocationBatchError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 404
    goto :goto_0

    .line 384
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .line 386
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    move v2, v1

    goto :goto_0

    .line 388
    :pswitch_3
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/RelocationBatchError;
    :cond_8
    move v2, v1

    .line 408
    goto :goto_0

    .line 382
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
        :pswitch_0
    .end packed-switch
.end method

.method public getFromLookupValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    if-eq v0, v1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FROM_LOOKUP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public getFromWriteValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    if-eq v0, v1, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FROM_WRITE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public getToValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    if-eq v0, v1, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TO, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 362
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->toValue:Lcom/dropbox/core/v2/files/WriteError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 368
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 369
    return v0
.end method

.method public isCantCopySharedFolder()Z
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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
    .line 313
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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
    .line 302
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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
    .line 335
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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
    .line 153
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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
    .line 199
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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
    .line 346
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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
    .line 245
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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
    .line 324
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTooManyWriteOperations()Z
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 414
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 426
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
