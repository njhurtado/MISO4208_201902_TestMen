.class Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$3;
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

.field final synthetic val$defaultBackupFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;

    .prologue
    .line 384
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$3;->this$0:Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;

    iput-object p2, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$3;->val$defaultBackupFile:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 387
    new-instance v0, Lorg/gnucash/android/importer/ImportAsyncTask;

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$3;->this$0:Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/gnucash/android/importer/ImportAsyncTask;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$3;->val$defaultBackupFile:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/gnucash/android/importer/ImportAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 388
    return-void
.end method
