.class public Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Builder;
.super Ljava/lang/Object;
.source "PropertyGroupUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/PropertyGroupUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected addOrUpdateFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyField;",
            ">;"
        }
    .end annotation
.end field

.field protected removeFields:Ljava/util/List;
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
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "templateId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    if-nez p1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'templateId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'templateId\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    const-string v0, "(/|ptid:).*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'templateId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Builder;->templateId:Ljava/lang/String;

    .line 154
    iput-object v2, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Builder;->addOrUpdateFields:Ljava/util/List;

    .line 155
    iput-object v2, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Builder;->removeFields:Ljava/util/List;

    .line 156
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/PropertyGroupUpdate;
    .locals 4

    .prologue
    .line 213
    new-instance v0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Builder;->templateId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Builder;->addOrUpdateFields:Ljava/util/List;

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Builder;->removeFields:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public withAddOrUpdateFields(Ljava/util/List;)Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyField;",
            ">;)",
            "Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Builder;"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "addOrUpdateFields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyField;>;"
    if-eqz p1, :cond_1

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/properties/PropertyField;

    .line 173
    .local v0, "x":Lcom/dropbox/core/v2/properties/PropertyField;
    if-nez v0, :cond_0

    .line 174
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'addOrUpdateFields\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    .end local v0    # "x":Lcom/dropbox/core/v2/properties/PropertyField;
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Builder;->addOrUpdateFields:Ljava/util/List;

    .line 179
    return-object p0
.end method

.method public withRemoveFields(Ljava/util/List;)Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Builder;"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "removeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 196
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    .local v0, "x":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 198
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'removeFields\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    .end local v0    # "x":Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Builder;->removeFields:Ljava/util/List;

    .line 203
    return-object p0
.end method
