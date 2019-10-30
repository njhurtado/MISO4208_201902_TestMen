.class public final Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;
.super Ljava/lang/Object;
.source "ModifyPropertyTemplateError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Serializer;,
        Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;
    }
.end annotation


# static fields
.field public static final CONFLICTING_PROPERTY_NAMES:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;

.field public static final OTHER:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;

.field public static final RESTRICTED_CONTENT:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;

.field public static final TEMPLATE_ATTRIBUTE_TOO_LARGE:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;

.field public static final TOO_MANY_PROPERTIES:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;

.field public static final TOO_MANY_TEMPLATES:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

.field private final templateNotFoundValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;

    sget-object v1, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;-><init>(Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;

    sget-object v1, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;->OTHER:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;-><init>(Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->OTHER:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;

    sget-object v1, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;->CONFLICTING_PROPERTY_NAMES:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;-><init>(Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->CONFLICTING_PROPERTY_NAMES:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;

    .line 88
    new-instance v0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;

    sget-object v1, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;->TOO_MANY_PROPERTIES:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;-><init>(Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->TOO_MANY_PROPERTIES:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;

    sget-object v1, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;->TOO_MANY_TEMPLATES:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;-><init>(Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->TOO_MANY_TEMPLATES:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;

    .line 96
    new-instance v0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;

    sget-object v1, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;->TEMPLATE_ATTRIBUTE_TOO_LARGE:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;-><init>(Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->TEMPLATE_ATTRIBUTE_TOO_LARGE:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;Ljava/lang/String;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;
    .param p2, "templateNotFoundValue"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    .line 113
    iput-object p2, p0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method public static templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

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
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    const-string v0, "(/|ptid:).*"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;

    sget-object v1, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;-><init>(Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 265
    if-ne p1, p0, :cond_0

    .line 293
    :goto_0
    :pswitch_0
    return v2

    .line 268
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 269
    check-cast v0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;

    .line 270
    .local v0, "other":Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;
    iget-object v3, p0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 271
    goto :goto_0

    .line 273
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$1;->$SwitchMap$com$dropbox$core$v2$properties$ModifyPropertyTemplateError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 289
    goto :goto_0

    .line 275
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;
    :cond_4
    move v2, v1

    .line 293
    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getTemplateNotFoundValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    if-eq v0, v1, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 255
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 259
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 260
    return v0
.end method

.method public isConflictingPropertyNames()Z
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;->CONFLICTING_PROPERTY_NAMES:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

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
    .line 206
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;->OTHER:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

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
    .line 195
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTemplateAttributeTooLarge()Z
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;->TEMPLATE_ATTRIBUTE_TOO_LARGE:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

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
    .line 139
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTooManyProperties()Z
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;->TOO_MANY_PROPERTIES:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTooManyTemplates()Z
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;->TOO_MANY_TEMPLATES:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    sget-object v0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    sget-object v0, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
