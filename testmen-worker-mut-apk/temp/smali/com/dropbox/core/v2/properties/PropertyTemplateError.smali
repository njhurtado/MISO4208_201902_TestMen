.class public final Lcom/dropbox/core/v2/properties/PropertyTemplateError;
.super Ljava/lang/Object;
.source "PropertyTemplateError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/properties/PropertyTemplateError$Serializer;,
        Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/properties/PropertyTemplateError;

.field public static final RESTRICTED_CONTENT:Lcom/dropbox/core/v2/properties/PropertyTemplateError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

.field private final templateNotFoundValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;

    sget-object v1, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/properties/PropertyTemplateError;-><init>(Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/properties/PropertyTemplateError;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;

    sget-object v1, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->OTHER:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/properties/PropertyTemplateError;-><init>(Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;->OTHER:Lcom/dropbox/core/v2/properties/PropertyTemplateError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;Ljava/lang/String;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;
    .param p2, "templateNotFoundValue"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    .line 83
    iput-object p2, p0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/properties/PropertyTemplateError;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/properties/PropertyTemplateError;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method public static templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/properties/PropertyTemplateError;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 130
    if-nez p0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    const-string v0, "(/|ptid:).*"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;

    sget-object v1, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/properties/PropertyTemplateError;-><init>(Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 193
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 213
    :cond_0
    :goto_0
    return v1

    .line 196
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/properties/PropertyTemplateError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 197
    check-cast v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;

    .line 198
    .local v0, "other":Lcom/dropbox/core/v2/properties/PropertyTemplateError;
    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    if-ne v3, v4, :cond_0

    .line 201
    sget-object v3, Lcom/dropbox/core/v2/properties/PropertyTemplateError$1;->$SwitchMap$com$dropbox$core$v2$properties$PropertyTemplateError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 203
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 205
    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 207
    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTemplateNotFoundValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    if-eq v0, v1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 184
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 188
    .local v0, "hash":I
    return v0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->OTHER:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

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
    .line 168
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

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
    .line 112
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/PropertyTemplateError;->_tag:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    sget-object v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyTemplateError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/properties/PropertyTemplateError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
