.class public final Lcom/dropbox/core/v2/files/PreviewError;
.super Ljava/lang/Object;
.source "PreviewError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/PreviewError$Serializer;,
        Lcom/dropbox/core/v2/files/PreviewError$Tag;
    }
.end annotation


# static fields
.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/files/PreviewError;

.field public static final UNSUPPORTED_CONTENT:Lcom/dropbox/core/v2/files/PreviewError;

.field public static final UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/PreviewError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

.field private final pathValue:Lcom/dropbox/core/v2/files/LookupError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/dropbox/core/v2/files/PreviewError;

    sget-object v1, Lcom/dropbox/core/v2/files/PreviewError$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/PreviewError;-><init>(Lcom/dropbox/core/v2/files/PreviewError$Tag;Lcom/dropbox/core/v2/files/LookupError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/PreviewError;->IN_PROGRESS:Lcom/dropbox/core/v2/files/PreviewError;

    .line 58
    new-instance v0, Lcom/dropbox/core/v2/files/PreviewError;

    sget-object v1, Lcom/dropbox/core/v2/files/PreviewError$Tag;->UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/PreviewError;-><init>(Lcom/dropbox/core/v2/files/PreviewError$Tag;Lcom/dropbox/core/v2/files/LookupError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/PreviewError;->UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/PreviewError;

    .line 62
    new-instance v0, Lcom/dropbox/core/v2/files/PreviewError;

    sget-object v1, Lcom/dropbox/core/v2/files/PreviewError$Tag;->UNSUPPORTED_CONTENT:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/PreviewError;-><init>(Lcom/dropbox/core/v2/files/PreviewError$Tag;Lcom/dropbox/core/v2/files/LookupError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/PreviewError;->UNSUPPORTED_CONTENT:Lcom/dropbox/core/v2/files/PreviewError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/files/PreviewError$Tag;Lcom/dropbox/core/v2/files/LookupError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/PreviewError$Tag;
    .param p2, "pathValue"    # Lcom/dropbox/core/v2/files/LookupError;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    .line 78
    iput-object p2, p0, Lcom/dropbox/core/v2/files/PreviewError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/PreviewError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/PreviewError;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PreviewError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/PreviewError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/files/LookupError;

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/PreviewError;

    sget-object v1, Lcom/dropbox/core/v2/files/PreviewError$Tag;->PATH:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/PreviewError;-><init>(Lcom/dropbox/core/v2/files/PreviewError$Tag;Lcom/dropbox/core/v2/files/LookupError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 188
    if-ne p1, p0, :cond_0

    .line 210
    :goto_0
    :pswitch_0
    return v2

    .line 191
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/files/PreviewError;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 192
    check-cast v0, Lcom/dropbox/core/v2/files/PreviewError;

    .line 193
    .local v0, "other":Lcom/dropbox/core/v2/files/PreviewError;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 194
    goto :goto_0

    .line 196
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/files/PreviewError$1;->$SwitchMap$com$dropbox$core$v2$files$PreviewError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/PreviewError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 206
    goto :goto_0

    .line 198
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/PreviewError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/PreviewError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PreviewError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/PreviewError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/PreviewError;
    :cond_4
    move v2, v1

    .line 210
    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/PreviewError$Tag;->PATH:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    if-eq v0, v1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/PreviewError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PreviewError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 179
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PreviewError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 183
    .local v0, "hash":I
    return v0
.end method

.method public isInProgress()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/PreviewError$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/PreviewError$Tag;

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
    .line 104
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/PreviewError$Tag;->PATH:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnsupportedContent()Z
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/PreviewError$Tag;->UNSUPPORTED_CONTENT:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnsupportedExtension()Z
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/PreviewError$Tag;->UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/PreviewError$Tag;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PreviewError;->_tag:Lcom/dropbox/core/v2/files/PreviewError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    sget-object v0, Lcom/dropbox/core/v2/files/PreviewError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PreviewError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/PreviewError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    sget-object v0, Lcom/dropbox/core/v2/files/PreviewError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PreviewError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/PreviewError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
