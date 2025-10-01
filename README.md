# Fully responsive Portfolio

This project aims to create a **fully responsive Portfolio** on Flutter Web using innovative and practical approaches.  
Through extensive testing, traditional solutions like `LayoutBuilder` and `ScreenUtil` were found to have limitations, especially for rapid resizing and extreme screen compression.  
The project demonstrates how to achieve a flexible and smooth layout across phones, tablets, and browsers.

## Challenges & Solutions

### 1 – LayoutBuilder
**Problem:** LayoutBuilder didn’t provide enough control over element sizes and ratios for flexible layouts.  
**Solution:** Replaced it with nested Containers and a custom controller to manage dimensions and relative proportions effectively.

### 2 – ScreenUtil Library
**Problem:** ScreenUtil was ineffective for web-specific behaviors such as quick resizing and shrinking the layout to very small screen widths.  
**Solution:**  
- Used FittedBox + Containers to maintain layout flexibility.  
- Adopted fixed text sizes to prevent unexpected shrinking or stretching.  
- Added custom breakpoints for phones and tablets to ensure proper responsiveness.

**Result:**  
A flexible and smooth design that works well even during rapid resizing or extreme compression.  
Full support for phones, tablets, and browsers in a balanced way.  
The project evolved from a simple portfolio into a proof of concept, demonstrating Flutter Web’s potential when practical solutions are applied.

## Features
- Fully responsive design  
- Custom breakpoints for devices  
- Smooth resizing animations

## Tools & Technologies
- Flutter  
- Supabase  
- Cubit (for state management)
