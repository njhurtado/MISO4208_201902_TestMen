.class public Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;
.super Ljava/lang/Object;
.source "PropertiesTemplateUpdateBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;)V
    .locals 2
    .param p1, "_client"    # Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;
    .param p2, "_builder"    # Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;->_client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    .line 38
    if-nez p2, :cond_1

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;->_builder:Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;

    .line 42
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/team/UpdatePropertyTemplateResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/properties/ModifyPropertyTemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v1, p0, Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;->_builder:Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;->build()Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;

    move-result-object v0

    .line 92
    .local v0, "arg_":Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;
    iget-object v1, p0, Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;->_client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->propertiesTemplateUpdate(Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;)Lcom/dropbox/core/v2/team/UpdatePropertyTemplateResult;

    move-result-object v1

    return-object v1
.end method

.method public withAddFields(Ljava/util/List;)Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;",
            ">;)",
            "Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "addFields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;>;"
    iget-object v0, p0, Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;->_builder:Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;->withAddFields(Ljava/util/List;)Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;

    .line 84
    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;->_builder:Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;->withDescription(Ljava/lang/String;)Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;

    .line 67
    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;->_builder:Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;->withName(Ljava/lang/String;)Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Builder;

    .line 54
    return-object p0
.end method
