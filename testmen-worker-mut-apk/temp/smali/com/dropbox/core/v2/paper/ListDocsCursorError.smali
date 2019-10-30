.class public final Lcom/dropbox/core/v2/paper/ListDocsCursorError;
.super Ljava/lang/Object;
.source "ListDocsCursorError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/ListDocsCursorError$Serializer;,
        Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/paper/ListDocsCursorError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

.field private final cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;->OTHER:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/ListDocsCursorError;-><init>(Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;Lcom/dropbox/core/v2/paper/PaperApiCursorError;)V

    sput-object v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->OTHER:Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;Lcom/dropbox/core/v2/paper/PaperApiCursorError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;
    .param p2, "cursorErrorValue"    # Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    .line 69
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/paper/ListDocsCursorError;)Lcom/dropbox/core/v2/paper/PaperApiCursorError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    return-object v0
.end method

.method public static cursorError(Lcom/dropbox/core/v2/paper/PaperApiCursorError;)Lcom/dropbox/core/v2/paper/ListDocsCursorError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    .prologue
    .line 115
    if-nez p0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;->CURSOR_ERROR:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/paper/ListDocsCursorError;-><init>(Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;Lcom/dropbox/core/v2/paper/PaperApiCursorError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 159
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 177
    :cond_0
    :goto_0
    return v1

    .line 162
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 163
    check-cast v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    .line 164
    .local v0, "other":Lcom/dropbox/core/v2/paper/ListDocsCursorError;
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    if-ne v3, v4, :cond_0

    .line 167
    sget-object v3, Lcom/dropbox/core/v2/paper/ListDocsCursorError$1;->$SwitchMap$com$dropbox$core$v2$paper$ListDocsCursorError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 169
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/paper/PaperApiCursorError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 171
    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCursorErrorValue()Lcom/dropbox/core/v2/paper/PaperApiCursorError;
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;->CURSOR_ERROR:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    if-eq v0, v1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.CURSOR_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 150
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 154
    .local v0, "hash":I
    return v0
.end method

.method public isCursorError()Z
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;->CURSOR_ERROR:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

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
    .line 145
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;->OTHER:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
