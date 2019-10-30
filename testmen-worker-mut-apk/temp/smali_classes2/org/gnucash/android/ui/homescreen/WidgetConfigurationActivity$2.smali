.class Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$2;
.super Ljava/lang/Object;
.source "WidgetConfigurationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->bindListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$2;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    iget-object v6, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$2;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    invoke-virtual {v6}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 161
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 162
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 163
    iget-object v6, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$2;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    const-string v7, "appWidgetId"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v6, v7}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->access$202(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;I)I

    .line 168
    :cond_0
    iget-object v6, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$2;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    invoke-static {v6}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->access$200(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;)I

    move-result v6

    if-nez v6, :cond_1

    .line 169
    iget-object v6, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$2;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    invoke-virtual {v6}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->finish()V

    .line 184
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v6

    iget-object v7, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$2;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    iget-object v7, v7, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mBooksSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "bookUID":Ljava/lang/String;
    iget-object v6, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$2;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    invoke-static {v6}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->access$000(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v6

    iget-object v7, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$2;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    iget-object v7, v7, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mAccountsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "accountUID":Ljava/lang/String;
    iget-object v6, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$2;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    iget-object v6, v6, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mHideAccountBalance:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 177
    .local v3, "hideAccountBalance":Z
    iget-object v6, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$2;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    iget-object v7, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$2;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    invoke-static {v7}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->access$200(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;)I

    move-result v7

    invoke-static {v6, v7, v1, v0, v3}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->configureWidget(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 178
    iget-object v6, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$2;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    iget-object v7, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$2;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    invoke-static {v7}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->access$200(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;)I

    move-result v7

    invoke-static {v6, v7}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->updateWidget(Landroid/content/Context;I)V

    .line 180
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 181
    .local v5, "resultValue":Landroid/content/Intent;
    const-string v6, "appWidgetId"

    iget-object v7, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$2;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    invoke-static {v7}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->access$200(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    iget-object v6, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$2;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v5}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->setResult(ILandroid/content/Intent;)V

    .line 183
    iget-object v6, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$2;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    invoke-virtual {v6}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->finish()V

    goto :goto_0
.end method
