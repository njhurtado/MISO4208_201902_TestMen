.class Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$2;
.super Ljava/lang/Object;
.source "DateRangePickerDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;

    .prologue
    .line 103
    iput-object p1, p0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$2;->this$0:Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$2;->this$0:Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->dismiss()V

    .line 107
    return-void
.end method
