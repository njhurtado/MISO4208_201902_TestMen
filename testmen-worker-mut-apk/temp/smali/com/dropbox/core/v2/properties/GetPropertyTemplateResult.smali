.class public Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;
.super Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;
.source "GetPropertyTemplateResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult$Serializer;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    if-ne p1, p0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 88
    check-cast v0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;

    .line 89
    .local v0, "other":Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;->name:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;->description:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;->description:Ljava/lang/String;

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;->fields:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;->fields:Ljava/util/List;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;->fields:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;->fields:Ljava/util/List;

    .line 91
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;
    :cond_5
    move v1, v2

    .line 95
    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
