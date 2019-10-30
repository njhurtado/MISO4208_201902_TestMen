.class Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$7;
.super Ljava/lang/Object;
.source "BackupPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->restoreBackup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;

.field final synthetic val$bookUID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;

    .prologue
    .line 429
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$7;->this$0:Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;

    iput-object p2, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$7;->val$bookUID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 432
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$7;->val$bookUID:Ljava/lang/String;

    invoke-static {v1}, Lorg/gnucash/android/util/BackupManager;->getBackupList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 433
    .local v0, "backupFile":Ljava/io/File;
    new-instance v1, Lorg/gnucash/android/importer/ImportAsyncTask;

    iget-object v2, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$7;->this$0:Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gnucash/android/importer/ImportAsyncTask;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/gnucash/android/importer/ImportAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 434
    return-void
.end method
