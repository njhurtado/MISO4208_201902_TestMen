.class Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2$1;
.super Ljava/lang/Object;
.source "BackupPreferenceFragment.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2;->onConnected(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2;

    .prologue
    .line 321
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2$1;->this$0:Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 321
    check-cast p1, Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;

    invoke-virtual {p0, p1}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2$1;->onResult(Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;)V
    .locals 4
    .param p1, "result"    # Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;

    .prologue
    .line 324
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    const-string v1, "BackupPrefFragment"

    const-string v2, "Error creating the application folder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_0
    return-void

    .line 329
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;->getDriveFolder()Lcom/google/android/gms/drive/DriveFolder;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/drive/DriveFolder;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/drive/DriveId;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "folderId":Ljava/lang/String;
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2$1;->this$0:Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2;

    iget-object v1, v1, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 331
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2$1;->this$0:Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2;

    iget-object v2, v2, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2;->val$context:Landroid/content/Context;

    const v3, 0x7f0f00ac

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 332
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
