.class public final Lcom/dropbox/core/v2/files/RemovePropertiesError;
.super Ljava/lang/Object;
.source "RemovePropertiesError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/RemovePropertiesError$Serializer;,
        Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/RemovePropertiesError;

.field public static final RESTRICTED_CONTENT:Lcom/dropbox/core/v2/files/RemovePropertiesError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

.field private final pathValue:Lcom/dropbox/core/v2/files/LookupError;

.field private final propertyGroupLookupValue:Lcom/dropbox/core/v2/files/LookUpPropertiesError;

.field private final templateNotFoundValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/dropbox/core/v2/files/RemovePropertiesError;

    sget-object v1, Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/files/RemovePropertiesError;-><init>(Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/LookUpPropertiesError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/files/RemovePropertiesError;

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/files/RemovePropertiesError;

    sget-object v1, Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/files/RemovePropertiesError;-><init>(Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/LookUpPropertiesError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->OTHER:Lcom/dropbox/core/v2/files/RemovePropertiesError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/LookUpPropertiesError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;
    .param p2, "templateNotFoundValue"    # Ljava/lang/String;
    .param p3, "pathValue"    # Lcom/dropbox/core/v2/files/LookupError;
    .param p4, "propertyGroupLookupValue"    # Lcom/dropbox/core/v2/files/LookUpPropertiesError;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    .line 85
    iput-object p2, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    .line 87
    iput-object p4, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/files/LookUpPropertiesError;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/RemovePropertiesError;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/RemovePropertiesError;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/RemovePropertiesError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/RemovePropertiesError;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/files/RemovePropertiesError;)Lcom/dropbox/core/v2/files/LookUpPropertiesError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/RemovePropertiesError;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/files/LookUpPropertiesError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RemovePropertiesError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/LookupError;

    .prologue
    const/4 v2, 0x0

    .line 208
    if-nez p0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/RemovePropertiesError;

    sget-object v1, Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;->PATH:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/dropbox/core/v2/files/RemovePropertiesError;-><init>(Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/LookUpPropertiesError;)V

    return-object v0
.end method

.method public static propertyGroupLookup(Lcom/dropbox/core/v2/files/LookUpPropertiesError;)Lcom/dropbox/core/v2/files/RemovePropertiesError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/LookUpPropertiesError;

    .prologue
    const/4 v2, 0x0

    .line 254
    if-nez p0, :cond_0

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/RemovePropertiesError;

    sget-object v1, Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;->PROPERTY_GROUP_LOOKUP:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    invoke-direct {v0, v1, v2, v2, p0}, Lcom/dropbox/core/v2/files/RemovePropertiesError;-><init>(Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/LookUpPropertiesError;)V

    return-object v0
.end method

.method public static templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/files/RemovePropertiesError;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 131
    if-nez p0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    const-string v0, "(/|ptid:).*"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/files/RemovePropertiesError;

    sget-object v1, Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/dropbox/core/v2/files/RemovePropertiesError;-><init>(Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/files/LookUpPropertiesError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 290
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 314
    :cond_0
    :goto_0
    return v1

    .line 293
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/files/RemovePropertiesError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 294
    check-cast v0, Lcom/dropbox/core/v2/files/RemovePropertiesError;

    .line 295
    .local v0, "other":Lcom/dropbox/core/v2/files/RemovePropertiesError;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    if-ne v3, v4, :cond_0

    .line 298
    sget-object v3, Lcom/dropbox/core/v2/files/RemovePropertiesError$1;->$SwitchMap$com$dropbox$core$v2$files$RemovePropertiesError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 300
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 302
    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 304
    goto :goto_0

    .line 306
    :pswitch_3
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 308
    :pswitch_4
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/files/LookUpPropertiesError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/files/LookUpPropertiesError;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/files/LookUpPropertiesError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/files/LookUpPropertiesError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/LookUpPropertiesError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;->PATH:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    if-eq v0, v1, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public getPropertyGroupLookupValue()Lcom/dropbox/core/v2/files/LookUpPropertiesError;
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;->PROPERTY_GROUP_LOOKUP:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    if-eq v0, v1, :cond_0

    .line 271
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PROPERTY_GROUP_LOOKUP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/files/LookUpPropertiesError;

    return-object v0
.end method

.method public getTemplateNotFoundValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    if-eq v0, v1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 278
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/files/LookUpPropertiesError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 284
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 285
    return v0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

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
    .line 191
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;->PATH:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPropertyGroupLookup()Z
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;->PROPERTY_GROUP_LOOKUP:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

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
    .line 169
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

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
    .line 113
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/files/RemovePropertiesError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    sget-object v0, Lcom/dropbox/core/v2/files/RemovePropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RemovePropertiesError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RemovePropertiesError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    sget-object v0, Lcom/dropbox/core/v2/files/RemovePropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RemovePropertiesError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RemovePropertiesError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
