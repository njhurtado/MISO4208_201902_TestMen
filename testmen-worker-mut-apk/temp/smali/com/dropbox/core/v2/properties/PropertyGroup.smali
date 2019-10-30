.class public Lcom/dropbox/core/v2/properties/PropertyGroup;
.super Ljava/lang/Object;
.source "PropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;
    }
.end annotation


# instance fields
.field protected final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyField;",
            ">;"
        }
    .end annotation
.end field

.field protected final templateId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "templateId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyField;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'templateId\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'templateId\' is shorter than 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_1
    const-string v1, "(/|ptid:).*"

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'templateId\' does not match pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/properties/PropertyGroup;->templateId:Ljava/lang/String;

    .line 53
    if-nez p2, :cond_3

    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'fields\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/properties/PropertyField;

    .line 57
    .local v0, "x":Lcom/dropbox/core/v2/properties/PropertyField;
    if-nez v0, :cond_4

    .line 58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'fields\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    .end local v0    # "x":Lcom/dropbox/core/v2/properties/PropertyField;
    :cond_5
    iput-object p2, p0, Lcom/dropbox/core/v2/properties/PropertyGroup;->fields:Ljava/util/List;

    .line 62
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    if-ne p1, p0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v1

    .line 98
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 99
    check-cast v0, Lcom/dropbox/core/v2/properties/PropertyGroup;

    .line 100
    .local v0, "other":Lcom/dropbox/core/v2/properties/PropertyGroup;
    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyGroup;->templateId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/PropertyGroup;->templateId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyGroup;->templateId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/PropertyGroup;->templateId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyGroup;->fields:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/PropertyGroup;->fields:Ljava/util/List;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyGroup;->fields:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/PropertyGroup;->fields:Ljava/util/List;

    .line 101
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/properties/PropertyGroup;
    :cond_4
    move v1, v2

    .line 105
    goto :goto_0
.end method

.method public getFields()Ljava/util/List;
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
    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/PropertyGroup;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/PropertyGroup;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 85
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyGroup;->templateId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyGroup;->fields:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 89
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
