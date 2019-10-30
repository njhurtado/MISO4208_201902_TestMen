.class Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$1;
.super Ljava/lang/Object;
.source "WidgetConfigurationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 138
    iput-object p1, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$1;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getRecord(J)Lorg/gnucash/android/model/BaseModel;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Book;

    .line 142
    .local v0, "book":Lorg/gnucash/android/model/Book;
    new-instance v3, Lorg/gnucash/android/db/DatabaseHelper;

    iget-object v4, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$1;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Book;->getUID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/gnucash/android/db/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/gnucash/android/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 143
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$1;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    new-instance v4, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-direct {v4, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v3, v4}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->access$002(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;Lorg/gnucash/android/db/adapter/AccountsDbAdapter;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 145
    iget-object v3, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$1;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    invoke-static {v3}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->access$000(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAllRecordsOrderedByFullName()Landroid/database/Cursor;

    move-result-object v1

    .line 146
    .local v1, "cursor":Landroid/database/Cursor;
    iget-object v3, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$1;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    invoke-static {v3}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->access$100(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 147
    iget-object v3, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$1;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    invoke-static {v3}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->access$100(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    .line 148
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
