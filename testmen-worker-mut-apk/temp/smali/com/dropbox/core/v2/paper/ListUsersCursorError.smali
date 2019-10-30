.class public final Lcom/dropbox/core/v2/paper/ListUsersCursorError;
.super Ljava/lang/Object;
.source "ListUsersCursorError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;,
        Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;
    }
.end annotation


# static fields
.field public static final DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/ListUsersCursorError;

.field public static final INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/ListUsersCursorError;

.field public static final OTHER:Lcom/dropbox/core/v2/paper/ListUsersCursorError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

.field private final cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;-><init>(Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;Lcom/dropbox/core/v2/paper/PaperApiCursorError;)V

    sput-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    .line 62
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->OTHER:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;-><init>(Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;Lcom/dropbox/core/v2/paper/PaperApiCursorError;)V

    sput-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->OTHER:Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;-><init>(Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;Lcom/dropbox/core/v2/paper/PaperApiCursorError;)V

    sput-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;Lcom/dropbox/core/v2/paper/PaperApiCursorError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;
    .param p2, "cursorErrorValue"    # Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    .line 81
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/paper/ListUsersCursorError;)Lcom/dropbox/core/v2/paper/PaperApiCursorError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    return-object v0
.end method

.method public static cursorError(Lcom/dropbox/core/v2/paper/PaperApiCursorError;)Lcom/dropbox/core/v2/paper/ListUsersCursorError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    .prologue
    .line 157
    if-nez p0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->CURSOR_ERROR:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;-><init>(Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;Lcom/dropbox/core/v2/paper/PaperApiCursorError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 191
    if-ne p1, p0, :cond_0

    .line 213
    :goto_0
    :pswitch_0
    return v2

    .line 194
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 195
    check-cast v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    .line 196
    .local v0, "other":Lcom/dropbox/core/v2/paper/ListUsersCursorError;
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 197
    goto :goto_0

    .line 199
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/paper/ListUsersCursorError$1;->$SwitchMap$com$dropbox$core$v2$paper$ListUsersCursorError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 209
    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/paper/PaperApiCursorError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/paper/ListUsersCursorError;
    :cond_4
    move v2, v1

    .line 213
    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCursorErrorValue()Lcom/dropbox/core/v2/paper/PaperApiCursorError;
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->CURSOR_ERROR:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    if-eq v0, v1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.CURSOR_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 181
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 185
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 186
    return v0
.end method

.method public isCursorError()Z
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->CURSOR_ERROR:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDocNotFound()Z
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsufficientPermissions()Z
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

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
    .line 118
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->OTHER:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    sget-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
