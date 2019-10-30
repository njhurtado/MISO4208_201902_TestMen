.class public final Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
.super Ljava/lang/Object;
.source "InvalidPropertyGroupError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;,
        Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;
    }
.end annotation


# static fields
.field public static final DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

.field public static final OTHER:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

.field public static final PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

.field public static final RESTRICTED_CONTENT:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

.field private final pathValue:Lcom/dropbox/core/v2/files/LookupError;

.field private final templateNotFoundValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    sget-object v1, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;-><init>(Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/LookupError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    .line 72
    new-instance v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    sget-object v1, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;->OTHER:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;-><init>(Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/LookupError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->OTHER:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    .line 76
    new-instance v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    sget-object v1, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;-><init>(Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/LookupError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    .line 80
    new-instance v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    sget-object v1, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;-><init>(Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/LookupError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/LookupError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;
    .param p2, "templateNotFoundValue"    # Ljava/lang/String;
    .param p3, "pathValue"    # Lcom/dropbox/core/v2/files/LookupError;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    .line 99
    iput-object p2, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->templateNotFoundValue:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->templateNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/LookupError;

    .prologue
    .line 221
    if-nez p0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    sget-object v1, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;->PATH:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;-><init>(Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/LookupError;)V

    return-object v0
.end method

.method public static templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    const-string v0, "(/|ptid:).*"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    sget-object v1, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;-><init>(Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/LookupError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 277
    if-ne p1, p0, :cond_0

    .line 303
    :goto_0
    :pswitch_0
    return v2

    .line 280
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 281
    check-cast v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    .line 282
    .local v0, "other":Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 283
    goto :goto_0

    .line 285
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$1;->$SwitchMap$com$dropbox$core$v2$files$InvalidPropertyGroupError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 299
    goto :goto_0

    .line 287
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->templateNotFoundValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->templateNotFoundValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->templateNotFoundValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->templateNotFoundValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .line 293
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
    :cond_6
    move v2, v1

    .line 303
    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;->PATH:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    if-eq v0, v1, :cond_0

    .line 237
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public getTemplateNotFoundValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    if-eq v0, v1, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->templateNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 266
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->templateNotFoundValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 271
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 272
    return v0
.end method

.method public isDoesNotFitTemplate()Z
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

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
    .line 193
    iget-object v0, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;->OTHER:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

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
    .line 204
    iget-object v0, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;->PATH:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPropertyFieldTooLarge()Z
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

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
    .line 182
    iget-object v0, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTemplateNotFound()Z
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    sget-object v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 321
    sget-object v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
