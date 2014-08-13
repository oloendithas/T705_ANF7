.class public Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;
.super Landroid/app/Activity;
.source "Xt9AutoSubstitutionsAdd.java"


# instance fields
.field private final MIN_WORD_LENGTH:I

.field private mAddingShortcutEditText:Landroid/widget/EditText;

.field private mAddingSubstitutionEditText:Landroid/widget/EditText;

.field private mEdittingShortcutWord:Ljava/lang/String;

.field private mEdittingSubstitutionWord:Ljava/lang/String;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mMenu:Landroid/view/Menu;

.field private mShortcutTextWatcher:Landroid/text/TextWatcher;

.field private mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->MIN_WORD_LENGTH:I

    .line 35
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    .line 36
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 38
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mEdittingShortcutWord:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mEdittingSubstitutionWord:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mAddingShortcutEditText:Landroid/widget/EditText;

    .line 41
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mAddingSubstitutionEditText:Landroid/widget/EditText;

    .line 43
    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mShortcutTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->controlMenuItem()V

    return-void
.end method

.method private addSubstitutionWord()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 232
    const v8, 0x7f0800b2

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 233
    .local v4, "editText":Landroid/widget/EditText;
    const-string v8, "input_method"

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 234
    .local v5, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v5, v8, v11}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 236
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mAddingShortcutEditText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 237
    .local v0, "addingEditable":Landroid/text/Editable;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "addingShortcut":Ljava/lang/String;
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mAddingSubstitutionEditText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "addingSubstitution":Ljava/lang/String;
    if-eqz v1, :cond_1

    const/16 v8, 0x20

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    if-eqz v2, :cond_1

    .line 243
    invoke-direct {p0, v1, v2}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->hasKoreanChar(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 244
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 245
    .local v3, "context":Landroid/content/Context;
    const v8, 0x7f0d00ad

    invoke-static {v3, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 247
    .local v7, "toast":Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 248
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 283
    .end local v3    # "context":Landroid/content/Context;
    .end local v7    # "toast":Landroid/widget/Toast;
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    invoke-interface {v8, v1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->addAutoSubstitution(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v6

    .line 253
    .local v6, "nResult":I
    if-nez v6, :cond_3

    .line 254
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mEdittingShortcutWord:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mEdittingShortcutWord:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 255
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mEdittingShortcutWord:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->deleteAutoSubstitution(Ljava/lang/CharSequence;)I

    .line 278
    .end local v6    # "nResult":I
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    if-eqz v8, :cond_2

    .line 279
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    invoke-interface {v8, v11}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->writeDBdataToFile(B)V

    .line 280
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->writeDBdataToFile(B)V

    .line 282
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 257
    .restart local v6    # "nResult":I
    :cond_3
    const/16 v8, 0x14

    if-ne v6, v8, :cond_5

    .line 258
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mEdittingShortcutWord:Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mEdittingShortcutWord:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 260
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    invoke-interface {v8, v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->deleteAutoSubstitution(Ljava/lang/CharSequence;)I

    .line 261
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    invoke-interface {v8, v1, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->addAutoSubstitution(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    goto :goto_1

    .line 263
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 264
    .restart local v3    # "context":Landroid/content/Context;
    const v8, 0x7f0d00a8

    invoke-static {v3, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 266
    .restart local v7    # "toast":Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 269
    .end local v3    # "context":Landroid/content/Context;
    .end local v7    # "toast":Landroid/widget/Toast;
    :cond_5
    sget-boolean v8, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v8, :cond_6

    if-eqz v6, :cond_6

    .line 270
    const-string v8, "SamsungIME"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mLeftButtonClickListener addMyWord error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_6
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 273
    .restart local v3    # "context":Landroid/content/Context;
    const v8, 0x7f0d00a9

    invoke-static {v3, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 275
    .restart local v7    # "toast":Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private cancelSubstitutionWord()V
    .locals 4

    .prologue
    .line 286
    const v2, 0x7f0800b2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 287
    .local v0, "editText":Landroid/widget/EditText;
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 288
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 289
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 290
    return-void
.end method

.method private controlMenuItem()V
    .locals 3

    .prologue
    .line 170
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mAddingShortcutEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "shortcutString":Ljava/lang/String;
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mAddingSubstitutionEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "substitutionString":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mEdittingShortcutWord:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mEdittingShortcutWord:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mEdittingSubstitutionWord:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mEdittingSubstitutionWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->setDoneMenuItemEnabled(Z)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->setDoneMenuItemEnabled(Z)V

    goto :goto_0
.end method

.method private getTextWatcher()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mShortcutTextWatcher:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd$1;-><init>(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mShortcutTextWatcher:Landroid/text/TextWatcher;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mShortcutTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private hasKoreanChar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "addingShortcut"    # Ljava/lang/String;
    .param p2, "addingSubstitution"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x318e

    const/16 v6, 0x3131

    const/16 v5, 0x11f9

    const/16 v4, 0x1100

    const/4 v1, 0x1

    .line 214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0xac00

    if-lt v2, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0xd7af

    if-le v2, v3, :cond_2

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v4, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-le v2, v5, :cond_2

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v2, v7, :cond_3

    .line 228
    :cond_2
    :goto_1
    return v1

    .line 214
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 222
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0xac00

    if-lt v2, v3, :cond_5

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0xd7af

    if-le v2, v3, :cond_2

    :cond_5
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v4, :cond_6

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-le v2, v5, :cond_2

    :cond_6
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_7

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-le v2, v7, :cond_2

    .line 221
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 228
    :cond_8
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setDoneMenuItemEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 164
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mMenu:Landroid/view/Menu;

    const v1, 0x7f080111

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 167
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 295
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 296
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 297
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0004

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 298
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->controlMenuItem()V

    .line 299
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f0d00a5

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 51
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DBController()Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    .line 52
    const v6, 0x7f03008a

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 55
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v8, "CURRENT_MODE"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 60
    .local v1, "currentModeId":I
    if-eqz v1, :cond_4

    .line 61
    const v6, 0x7f0d009e

    if-ne v1, v6, :cond_3

    .line 62
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    :cond_1
    :goto_0
    const-string v6, ""

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_5

    .line 72
    .local v2, "isfullscreen":Z
    :goto_1
    if-nez v2, :cond_6

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v8, 0x14

    invoke-virtual {v6, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 80
    :goto_2
    const v6, 0x7f0800b2

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mAddingShortcutEditText:Landroid/widget/EditText;

    .line 81
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mAddingShortcutEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mAddingShortcutEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 84
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mAddingShortcutEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->getTextWatcher()Landroid/text/TextWatcher;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 86
    const v6, 0x7f0800b3

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mAddingSubstitutionEditText:Landroid/widget/EditText;

    .line 87
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mAddingSubstitutionEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mAddingSubstitutionEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->getTextWatcher()Landroid/text/TextWatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "EDITTING_WORD"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mEdittingShortcutWord:Ljava/lang/String;

    .line 93
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mEdittingShortcutWord:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v3, "outSubstitution":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mEdittingShortcutWord:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->convertCharSequenceToShortArray(Ljava/lang/CharSequence;)[S

    move-result-object v5

    .line 96
    .local v5, "shortcut":[S
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    invoke-interface {v6, v5, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->isExistInAutoSubstitutions([SLjava/lang/StringBuilder;)I

    move-result v4

    .line 97
    .local v4, "retCode":I
    if-nez v4, :cond_2

    .line 98
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mAddingShortcutEditText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mEdittingShortcutWord:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mAddingShortcutEditText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mEdittingShortcutWord:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mEdittingShortcutWord:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/EditText;->setSelection(II)V

    .line 100
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mAddingSubstitutionEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mAddingSubstitutionEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/EditText;->setSelection(II)V

    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mEdittingSubstitutionWord:Ljava/lang/String;

    .line 105
    .end local v3    # "outSubstitution":Ljava/lang/StringBuilder;
    .end local v4    # "retCode":I
    .end local v5    # "shortcut":[S
    :cond_2
    return-void

    .line 63
    .end local v2    # "isfullscreen":Z
    :cond_3
    const v6, 0x7f0d00a1

    if-ne v1, v6, :cond_1

    .line 64
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0d00a6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 67
    :cond_4
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    move v2, v7

    .line 71
    goto/16 :goto_1

    .line 77
    .restart local v2    # "isfullscreen":Z
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v8, 0x10

    invoke-virtual {v6, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 188
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 189
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 190
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 191
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->mMenu:Landroid/view/Menu;

    .line 192
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->controlMenuItem()V

    .line 193
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 131
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/KeyEvent;

    .prologue
    .line 303
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 304
    const/4 v0, 0x1

    .line 306
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 198
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 209
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 200
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 203
    :sswitch_1
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->addSubstitutionWord()V

    goto :goto_0

    .line 206
    :sswitch_2
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->cancelSubstitutionWord()V

    goto :goto_0

    .line 198
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080110 -> :sswitch_2
        0x7f080111 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 137
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 143
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 149
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 155
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 161
    return-void
.end method
