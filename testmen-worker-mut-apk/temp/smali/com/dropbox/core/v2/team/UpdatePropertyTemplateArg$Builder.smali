.class public Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;
.super Ljava/lang/Object;
.source "UpdatePropertyTemplateArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected addFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;",
            ">;"
        }
    .end annotation
.end field

.field protected description:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected final templateId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "templateId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    if-nez p1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'templateId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'templateId\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1
    const-string v0, "(/|ptid:).*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'templateId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;->templateId:Ljava/lang/String;

    .line 166
    iput-object v2, p0, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;->name:Ljava/lang/String;

    .line 167
    iput-object v2, p0, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;->description:Ljava/lang/String;

    .line 168
    iput-object v2, p0, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;->addFields:Ljava/util/List;

    .line 169
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;
    .locals 5

    .prologue
    .line 228
    new-instance v0, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;->templateId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;->description:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;->addFields:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public withAddFields(Ljava/util/List;)Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;",
            ">;)",
            "Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "addFields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;>;"
    if-eqz p1, :cond_1

    .line 211
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;

    .line 212
    .local v0, "x":Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;
    if-nez v0, :cond_0

    .line 213
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'addFields\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    .end local v0    # "x":Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;->addFields:Ljava/util/List;

    .line 218
    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;->description:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;->name:Ljava/lang/String;

    .line 181
    return-object p0
.end method
