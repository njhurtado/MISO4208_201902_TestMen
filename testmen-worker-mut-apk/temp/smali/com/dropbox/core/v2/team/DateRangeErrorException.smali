.class public Lcom/dropbox/core/v2/team/DateRangeErrorException;
.super Lcom/dropbox/core/DbxApiException;
.source "DateRangeErrorException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public final errorValue:Lcom/dropbox/core/v2/team/DateRangeError;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/DateRangeError;)V
    .locals 2
    .param p1, "routeName"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "userMessage"    # Lcom/dropbox/core/LocalizedText;
    .param p4, "errorValue"    # Lcom/dropbox/core/v2/team/DateRangeError;

    .prologue
    .line 37
    invoke-static {p1, p3, p4}, Lcom/dropbox/core/v2/team/DateRangeErrorException;->buildMessage(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    .line 38
    if-nez p4, :cond_0

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "errorValue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p4, p0, Lcom/dropbox/core/v2/team/DateRangeErrorException;->errorValue:Lcom/dropbox/core/v2/team/DateRangeError;

    .line 42
    return-void
.end method
