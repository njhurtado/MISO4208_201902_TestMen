.class public Lcom/owncloud/android/lib/resources/shares/SharePermissionsBuilder;
.super Ljava/lang/Object;
.source "SharePermissionsBuilder.java"


# instance fields
.field private mPermissions:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/owncloud/android/lib/resources/shares/SharePermissionsBuilder;->mPermissions:I

    return-void
.end method

.method private updatePermission(IZ)V
    .locals 2
    .param p1, "permissionsFlag"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 89
    if-eqz p2, :cond_0

    .line 91
    iget v0, p0, Lcom/owncloud/android/lib/resources/shares/SharePermissionsBuilder;->mPermissions:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/owncloud/android/lib/resources/shares/SharePermissionsBuilder;->mPermissions:I

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget v0, p0, Lcom/owncloud/android/lib/resources/shares/SharePermissionsBuilder;->mPermissions:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/owncloud/android/lib/resources/shares/SharePermissionsBuilder;->mPermissions:I

    goto :goto_0
.end method


# virtual methods
.method public build()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/owncloud/android/lib/resources/shares/SharePermissionsBuilder;->mPermissions:I

    return v0
.end method

.method public setCreatePermission(Z)Lcom/owncloud/android/lib/resources/shares/SharePermissionsBuilder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 67
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/owncloud/android/lib/resources/shares/SharePermissionsBuilder;->updatePermission(IZ)V

    .line 68
    return-object p0
.end method

.method public setDeletePermission(Z)Lcom/owncloud/android/lib/resources/shares/SharePermissionsBuilder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 78
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/owncloud/android/lib/resources/shares/SharePermissionsBuilder;->updatePermission(IZ)V

    .line 79
    return-object p0
.end method

.method public setSharePermission(Z)Lcom/owncloud/android/lib/resources/shares/SharePermissionsBuilder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 45
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/owncloud/android/lib/resources/shares/SharePermissionsBuilder;->updatePermission(IZ)V

    .line 46
    return-object p0
.end method

.method public setUpdatePermission(Z)Lcom/owncloud/android/lib/resources/shares/SharePermissionsBuilder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 56
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/owncloud/android/lib/resources/shares/SharePermissionsBuilder;->updatePermission(IZ)V

    .line 57
    return-object p0
.end method
