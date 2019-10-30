.class public Lcom/owncloud/android/lib/common/ExternalLink;
.super Ljava/lang/Object;
.source "ExternalLink.java"


# annotations
.annotation runtime Lorg/parceler/Parcel;
.end annotation


# instance fields
.field public iconUrl:Ljava/lang/String;

.field public id:Ljava/lang/Integer;

.field public language:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public type:Lcom/owncloud/android/lib/common/ExternalLinkType;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/owncloud/android/lib/common/ExternalLinkType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "iconUrl"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/owncloud/android/lib/common/ExternalLinkType;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "url"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/owncloud/android/lib/common/ExternalLink;->id:Ljava/lang/Integer;

    .line 44
    iput-object p2, p0, Lcom/owncloud/android/lib/common/ExternalLink;->iconUrl:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/owncloud/android/lib/common/ExternalLink;->language:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/owncloud/android/lib/common/ExternalLink;->type:Lcom/owncloud/android/lib/common/ExternalLinkType;

    .line 47
    iput-object p5, p0, Lcom/owncloud/android/lib/common/ExternalLink;->name:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/owncloud/android/lib/common/ExternalLink;->url:Ljava/lang/String;

    .line 49
    return-void
.end method
