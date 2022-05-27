#!/bin/bash
mkdir ~/Library/KeyBindings
echo '{
  "\UF729"  = moveToBeginningOfParagraph:; // home
  "\UF72B"  = moveToEndOfParagraph:; // end}' >> ~/Library/KeyBindings/DefaultKeyBinding.dict
