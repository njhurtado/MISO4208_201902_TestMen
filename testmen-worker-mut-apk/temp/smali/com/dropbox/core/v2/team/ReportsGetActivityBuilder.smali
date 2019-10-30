.class public Lcom/dropbox/core/v2/team/ReportsGetActivityBuilder;
.super Ljava/lang/Object;
.source "ReportsGetActivityBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/team/DateRange$Builder;

.field private final _client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/DateRange$Builder;)V
    .locals 2
    .param p1, "_client"    # Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;
    .param p2, "_builder"    # Lcom/dropbox/core/v2/team/DateRange$Builder;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/ReportsGetActivityBuilder;->_client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    .line 36
    if-nez p2, :cond_1

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/team/ReportsGetActivityBuilder;->_builder:Lcom/dropbox/core/v2/team/DateRange$Builder;

    .line 40
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/team/GetActivityReport;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/DateRangeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lcom/dropbox/core/v2/team/ReportsGetActivityBuilder;->_builder:Lcom/dropbox/core/v2/team/DateRange$Builder;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/DateRange$Builder;->build()Lcom/dropbox/core/v2/team/DateRange;

    move-result-object v0

    .line 71
    .local v0, "arg_":Lcom/dropbox/core/v2/team/DateRange;
    iget-object v1, p0, Lcom/dropbox/core/v2/team/ReportsGetActivityBuilder;->_client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->reportsGetActivity(Lcom/dropbox/core/v2/team/DateRange;)Lcom/dropbox/core/v2/team/GetActivityReport;

    move-result-object v1

    return-object v1
.end method

.method public withEndDate(Ljava/util/Date;)Lcom/dropbox/core/v2/team/ReportsGetActivityBuilder;
    .locals 1
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ReportsGetActivityBuilder;->_builder:Lcom/dropbox/core/v2/team/DateRange$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/DateRange$Builder;->withEndDate(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DateRange$Builder;

    .line 63
    return-object p0
.end method

.method public withStartDate(Ljava/util/Date;)Lcom/dropbox/core/v2/team/ReportsGetActivityBuilder;
    .locals 1
    .param p1, "startDate"    # Ljava/util/Date;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ReportsGetActivityBuilder;->_builder:Lcom/dropbox/core/v2/team/DateRange$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/DateRange$Builder;->withStartDate(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DateRange$Builder;

    .line 51
    return-object p0
.end method
