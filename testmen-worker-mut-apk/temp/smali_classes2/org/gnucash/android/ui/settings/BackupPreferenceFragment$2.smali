.class final Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2;
.super Ljava/lang/Object;
.source "BackupPreferenceFragment.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getGoogleApiClient(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 315
    iget-object v3, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2;->val$context:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 316
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2;->val$context:Landroid/content/Context;

    const v4, 0x7f0f00ac

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "appFolderId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 318
    new-instance v3, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;-><init>()V

    iget-object v4, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2;->val$context:Landroid/content/Context;

    const v5, 0x7f0f0025

    .line 319
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->setTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->build()Lcom/google/android/gms/drive/MetadataChangeSet;

    move-result-object v1

    .line 320
    .local v1, "changeSet":Lcom/google/android/gms/drive/MetadataChangeSet;
    sget-object v3, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    sget-object v4, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v3, v4}, Lcom/google/android/gms/drive/DriveApi;->getRootFolder(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/drive/DriveFolder;

    move-result-object v3

    sget-object v4, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v3, v4, v1}, Lcom/google/android/gms/drive/DriveFolder;->createFolder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v3

    new-instance v4, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2$1;

    invoke-direct {v4, p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2$1;-><init>(Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2;)V

    .line 321
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 337
    .end local v1    # "changeSet":Lcom/google/android/gms/drive/MetadataChangeSet;
    :cond_0
    iget-object v3, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2;->val$context:Landroid/content/Context;

    const v4, 0x7f0f01f4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 338
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 342
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2;->val$context:Landroid/content/Context;

    const-string v1, "Connection to Google Drive suspended!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 343
    return-void
.end method
