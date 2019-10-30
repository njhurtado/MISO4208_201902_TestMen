.class Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog$1;
.super Ljava/lang/Object;
.source "DoubleConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;->getDialogBuilder()Landroid/support/v7/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;->onNegativeButton()V

    .line 64
    return-void
.end method
