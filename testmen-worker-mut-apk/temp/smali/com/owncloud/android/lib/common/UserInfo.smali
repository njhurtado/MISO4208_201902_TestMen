.class public Lcom/owncloud/android/lib/common/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# annotations
.annotation runtime Lorg/parceler/Parcel;
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public enabled:Ljava/lang/Boolean;

.field public id:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public quota:Lcom/owncloud/android/lib/common/Quota;

.field public twitter:Ljava/lang/String;

.field public webpage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/owncloud/android/lib/common/Quota;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enabled"    # Ljava/lang/Boolean;
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "phone"    # Ljava/lang/String;
    .param p6, "address"    # Ljava/lang/String;
    .param p7, "webpage"    # Ljava/lang/String;
    .param p8, "twitter"    # Ljava/lang/String;
    .param p9, "quota"    # Lcom/owncloud/android/lib/common/Quota;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/owncloud/android/lib/common/UserInfo;->id:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/owncloud/android/lib/common/UserInfo;->enabled:Ljava/lang/Boolean;

    .line 47
    iput-object p3, p0, Lcom/owncloud/android/lib/common/UserInfo;->displayName:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/owncloud/android/lib/common/UserInfo;->email:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/owncloud/android/lib/common/UserInfo;->phone:Ljava/lang/String;

    .line 50
    iput-object p6, p0, Lcom/owncloud/android/lib/common/UserInfo;->address:Ljava/lang/String;

    .line 51
    iput-object p7, p0, Lcom/owncloud/android/lib/common/UserInfo;->webpage:Ljava/lang/String;

    .line 52
    iput-object p8, p0, Lcom/owncloud/android/lib/common/UserInfo;->twitter:Ljava/lang/String;

    .line 53
    iput-object p9, p0, Lcom/owncloud/android/lib/common/UserInfo;->quota:Lcom/owncloud/android/lib/common/Quota;

    .line 54
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/owncloud/android/lib/common/UserInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/owncloud/android/lib/common/UserInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/owncloud/android/lib/common/UserInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/owncloud/android/lib/common/UserInfo;->enabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/owncloud/android/lib/common/UserInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/owncloud/android/lib/common/UserInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getQuota()Lcom/owncloud/android/lib/common/Quota;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/owncloud/android/lib/common/UserInfo;->quota:Lcom/owncloud/android/lib/common/Quota;

    return-object v0
.end method

.method public getTwitter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/owncloud/android/lib/common/UserInfo;->twitter:Ljava/lang/String;

    return-object v0
.end method

.method public getWebpage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/owncloud/android/lib/common/UserInfo;->webpage:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/owncloud/android/lib/common/UserInfo;->address:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/owncloud/android/lib/common/UserInfo;->displayName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/owncloud/android/lib/common/UserInfo;->email:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/owncloud/android/lib/common/UserInfo;->enabled:Ljava/lang/Boolean;

    .line 70
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/owncloud/android/lib/common/UserInfo;->id:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/owncloud/android/lib/common/UserInfo;->phone:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setQuota(Lcom/owncloud/android/lib/common/Quota;)V
    .locals 0
    .param p1, "quota"    # Lcom/owncloud/android/lib/common/Quota;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/owncloud/android/lib/common/UserInfo;->quota:Lcom/owncloud/android/lib/common/Quota;

    .line 118
    return-void
.end method

.method public setTwitter(Ljava/lang/String;)V
    .locals 0
    .param p1, "twitter"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/owncloud/android/lib/common/UserInfo;->twitter:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setWebpage(Ljava/lang/String;)V
    .locals 0
    .param p1, "webpage"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/owncloud/android/lib/common/UserInfo;->webpage:Ljava/lang/String;

    .line 102
    return-void
.end method
