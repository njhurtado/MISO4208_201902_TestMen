.class Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$5;
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


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;

    .prologue
    .line 399
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$5;->this$0:Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 402
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 403
    return-void
.end method
