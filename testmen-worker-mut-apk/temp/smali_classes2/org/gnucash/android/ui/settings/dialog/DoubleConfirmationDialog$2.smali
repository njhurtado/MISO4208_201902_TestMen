.class Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog$2;
.super Ljava/lang/Object;
.source "DoubleConfirmationDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;->setUpConfirmCheckBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;

.field final synthetic val$dialog:Landroid/support/v7/app/AlertDialog;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;Landroid/support/v7/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog$2;->this$0:Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;

    iput-object p2, p0, Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog$2;->val$dialog:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog$2;->val$dialog:Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 85
    return-void
.end method
