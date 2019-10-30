.class public Lcom/dropbox/core/v2/files/PropertyGroupUpdate;
.super Ljava/lang/Object;
.source "PropertyGroupUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Serializer;,
        Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Builder;
    }
.end annotation


# instance fields
.field protected final addOrUpdateFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyField;",
            ">;"
        }
    .end annotation
.end field

.field protected final removeFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final templateId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "templateId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0, v0}, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "templateId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyField;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "addOrUpdateFields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyField;>;"
    .local p3, "removeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'templateId\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'templateId\' is shorter than 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_1
    const-string v1, "(/|ptid:).*"

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'templateId\' does not match pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->templateId:Ljava/lang/String;

    .line 55
    if-eqz p2, :cond_4

    .line 56
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/properties/PropertyField;

    .line 57
    .local v0, "x":Lcom/dropbox/core/v2/properties/PropertyField;
    if-nez v0, :cond_3

    .line 58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'addOrUpdateFields\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    .end local v0    # "x":Lcom/dropbox/core/v2/properties/PropertyField;
    :cond_4
    iput-object p2, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->addOrUpdateFields:Ljava/util/List;

    .line 63
    if-eqz p3, :cond_6

    .line 64
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    .local v0, "x":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'removeFields\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    .end local v0    # "x":Ljava/lang/String;
    :cond_6
    iput-object p3, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->removeFields:Ljava/util/List;

    .line 71
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Builder;
    .locals 1
    .param p0, "templateId"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    if-ne p1, p0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v1

    .line 233
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 234
    check-cast v0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;

    .line 235
    .local v0, "other":Lcom/dropbox/core/v2/files/PropertyGroupUpdate;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->templateId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->templateId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->templateId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->templateId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->addOrUpdateFields:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->addOrUpdateFields:Ljava/util/List;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->addOrUpdateFields:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->addOrUpdateFields:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->addOrUpdateFields:Ljava/util/List;

    .line 236
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->removeFields:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->removeFields:Ljava/util/List;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->removeFields:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->removeFields:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->removeFields:Ljava/util/List;

    .line 237
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/PropertyGroupUpdate;
    :cond_5
    move v1, v2

    .line 241
    goto :goto_0
.end method

.method public getAddOrUpdateFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->addOrUpdateFields:Ljava/util/List;

    return-object v0
.end method

.method public getRemoveFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->removeFields:Ljava/util/List;

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 219
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->templateId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->addOrUpdateFields:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->removeFields:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 224
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    sget-object v0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
