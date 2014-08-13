.class public Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "EmergencyMessageContactCreateActivity.java"


# static fields
.field private static final MAX_LENGTH:I


# instance fields
.field private mMenuCancle:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field mNameField:Landroid/widget/EditText;

.field mNumberField:Landroid/widget/EditText;

.field mNumberTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_LimitNameLength"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->MAX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->setDoneButtonEnabled()V

    return-void
.end method

.method private hideInputMethod(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 180
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 181
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 184
    :cond_0
    return-void
.end method

.method private saveEmergencyMessageContact()V
    .locals 4

    .prologue
    .line 167
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 168
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    iget-object v3, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v2, "number"

    iget-object v3, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v2, "phone_data_id"

    const-string v3, "null"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v2, "content://com.android.contacts/emergency/message"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 174
    .local v0, "insertUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/ContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 177
    return-void
.end method

.method private setDoneButtonEnabled()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public actionBarSetup()Landroid/app/ActionBar;
    .locals 2

    .prologue
    const/16 v1, 0x1e

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 107
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 113
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 189
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f020633

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuCancle:Landroid/view/MenuItem;

    const v1, 0x7f020632

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuCancle:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v1, 0x7f040134

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->actionBarSetup()Landroid/app/ActionBar;

    .line 63
    const v1, 0x7f0902dd

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mNameField:Landroid/widget/EditText;

    .line 64
    const v1, 0x7f0902df

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mNumberField:Landroid/widget/EditText;

    .line 66
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mNameField:Landroid/widget/EditText;

    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    sget v4, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->MAX_LENGTH:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 69
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mNumberField:Landroid/widget/EditText;

    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    sget v4, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->MAX_LENGTH:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 73
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const v1, 0x7f0902de

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mNumberTitle:Landroid/widget/TextView;

    .line 76
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mNumberTitle:Landroid/widget/TextView;

    const v2, 0x7f0e0288

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 79
    :cond_0
    new-instance v0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity$1;-><init>(Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;)V

    .line 94
    .local v0, "textWhatcher":Landroid/text/TextWatcher;
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mNumberField:Landroid/widget/EditText;

    invoke-static {p0, v1}, Lcom/android/contacts/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 102
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 132
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 134
    const v1, 0x7f0904db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 135
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuDone:Landroid/view/MenuItem;

    const v2, 0x7f0e025f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 136
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 138
    const v1, 0x7f0904f6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuCancle:Landroid/view/MenuItem;

    .line 140
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->hideInputMethod(Landroid/view/View;)V

    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 163
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 155
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 158
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->saveEmergencyMessageContact()V

    goto :goto_0

    .line 152
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_1
        0x7f0904f6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 145
    const/4 v0, 0x1

    return v0
.end method
