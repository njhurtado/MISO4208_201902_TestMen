.class Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$1;
.super Ljava/lang/Object;
.source "DeleteAccountDialogFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    .prologue
    .line 187
    iput-object p1, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$1;->this$0:Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 190
    iget-object v0, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$1;->this$0:Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->access$000(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 191
    return-void
.end method
