.class Lorg/gnucash/android/ui/passcode/KeyboardFragment$12;
.super Ljava/lang/Object;
.source "KeyboardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/passcode/KeyboardFragment;->add(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    .prologue
    .line 176
    iput-object p1, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$12;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 178
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$12;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->access$600(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)Lorg/gnucash/android/ui/passcode/KeyboardFragment$OnPasscodeEnteredListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$12;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    invoke-static {v2}, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->access$200(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$12;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    invoke-static {v2}, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->access$300(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$12;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    .line 179
    invoke-static {v2}, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->access$400(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$12;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    invoke-static {v2}, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->access$500(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-interface {v0, v1}, Lorg/gnucash/android/ui/passcode/KeyboardFragment$OnPasscodeEnteredListener;->onPasscodeEntered(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$12;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->access$200(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$12;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->access$300(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$12;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->access$400(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$12;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->access$500(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$12;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->access$102(Lorg/gnucash/android/ui/passcode/KeyboardFragment;I)I

    .line 185
    return-void
.end method
