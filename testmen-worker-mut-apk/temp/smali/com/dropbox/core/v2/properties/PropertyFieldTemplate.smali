.class public Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;
.super Ljava/lang/Object;
.source "PropertyFieldTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;
    }
.end annotation


# instance fields
.field protected final description:Ljava/lang/String;

.field protected final name:Ljava/lang/String;

.field protected final type:Lcom/dropbox/core/v2/properties/PropertyType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/properties/PropertyType;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/dropbox/core/v2/properties/PropertyType;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->name:Ljava/lang/String;

    .line 51
    if-nez p2, :cond_1

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'description\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->description:Ljava/lang/String;

    .line 55
    if-nez p3, :cond_2

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'type\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    iput-object p3, p0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->type:Lcom/dropbox/core/v2/properties/PropertyType;

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    if-ne p1, p0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 108
    check-cast v0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;

    .line 109
    .local v0, "other":Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;
    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->name:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->description:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->description:Ljava/lang/String;

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->type:Lcom/dropbox/core/v2/properties/PropertyType;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->type:Lcom/dropbox/core/v2/properties/PropertyType;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->type:Lcom/dropbox/core/v2/properties/PropertyType;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->type:Lcom/dropbox/core/v2/properties/PropertyType;

    .line 111
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/properties/PropertyType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;
    :cond_5
    move v1, v2

    .line 115
    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/dropbox/core/v2/properties/PropertyType;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->type:Lcom/dropbox/core/v2/properties/PropertyType;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 93
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->description:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->type:Lcom/dropbox/core/v2/properties/PropertyType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 98
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
