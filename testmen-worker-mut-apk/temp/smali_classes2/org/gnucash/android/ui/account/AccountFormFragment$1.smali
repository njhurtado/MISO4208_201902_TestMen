.class Lorg/gnucash/android/ui/account/AccountFormFragment$1;
.super Ljava/lang/Object;
.source "AccountFormFragment.java"

# interfaces
.implements Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/account/AccountFormFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/account/AccountFormFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/account/AccountFormFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/account/AccountFormFragment;

    .prologue
    .line 210
    iput-object p1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment$1;->this$0:Lorg/gnucash/android/ui/account/AccountFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountFormFragment$1;->this$0:Lorg/gnucash/android/ui/account/AccountFormFragment;

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mColorSquare:Lorg/gnucash/android/ui/colorpicker/ColorSquare;

    invoke-virtual {v0, p1}, Lorg/gnucash/android/ui/colorpicker/ColorSquare;->setBackgroundColor(I)V

    .line 214
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountFormFragment$1;->this$0:Lorg/gnucash/android/ui/account/AccountFormFragment;

    invoke-static {v0, p1}, Lorg/gnucash/android/ui/account/AccountFormFragment;->access$002(Lorg/gnucash/android/ui/account/AccountFormFragment;I)I

    .line 215
    return-void
.end method
