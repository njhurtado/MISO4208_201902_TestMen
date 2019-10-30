.class public Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;
.super Ljava/lang/Object;
.source "PropertyGroupTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/properties/PropertyGroupTemplate$Serializer;
    }
.end annotation


# instance fields
.field protected final description:Ljava/lang/String;

.field protected final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;",
            ">;"
        }
    .end annotation
.end field

.field protected final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
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
    .line 46
    .local p3, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'name\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;->name:Ljava/lang/String;

    .line 51
    if-nez p2, :cond_1

    .line 52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'description\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;->description:Ljava/lang/String;

    .line 55
    if-nez p3, :cond_2

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'fields\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;

    .line 59
    .local v0, "x":Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;
    if-nez v0, :cond_3

    .line 60
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'fields\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    .end local v0    # "x":Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;
    :cond_4
    iput-object p3, p0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;->fields:Ljava/util/List;

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    if-ne p1, p0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 113
    check-cast v0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;

    .line 114
    .local v0, "other":Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;
    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;->name:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;->description:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;->description:Ljava/lang/String;

    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;->fields:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;->fields:Ljava/util/List;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;->fields:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;->fields:Ljava/util/List;

    .line 116
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;
    :cond_5
    move v1, v2

    .line 120
    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;->description:Ljava/lang/String;

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
    .line 93
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 98
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;->description:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate;->fields:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 103
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyGroupTemplate$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    sget-object v0, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyGroupTemplate$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/properties/PropertyGroupTemplate$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
